using AutoMapper;
using FindMyMoney.Domain.Common;
using FindMyMoney.Domain.DTOs.Emis;
using FindMyMoney.Domain.Models;
using FindMyMoney.Domain.Repositories;
using FindMyMoney.Infrastructure.ApiClients;
using FindMyMoney.Infrastructure.Common;
using FindMyMoney.Infrastructure.Local;
using FindMyMoney.Infrastructure.Local.Entities;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Logging;

namespace FindMyMoney.Infrastructure.Repositories;

public class EmiRepository(
    IEmiRESTRepository restService,
    IMapper mapper,
    LocalDbContext localDb,
    ILogger<EmiRepository> logger)
    : BaseRepoProvider<IEmiRESTRepository>(restService), IEmiRepository
{
    private readonly IMapper _mapper = mapper;
    private readonly LocalDbContext _localDb = localDb;
    private readonly ILogger<EmiRepository> _logger = logger;

    public async Task<Result<Emi>> GetByIdAsync(Guid userId, Guid emiId)
    {
        try
        {
            _logger.LogInformation("Getting EMI {EmiId} for user {UserId}", emiId, userId);
            var response = await RestService.GetEmiByIdAsync(userId, emiId);
            return Result<Emi>.Success(_mapper.Map<Emi>(response));
        }
        catch (Exception ex)
        {
            _logger.LogWarning(ex, "API unavailable, falling back to local DB for EMI {EmiId}", emiId);
            var local = await _localDb.Emis.FirstOrDefaultAsync(e => e.Id == emiId);
            if (local == null)
                return Result<Emi>.Failure("EMI not found locally");
            return Result<Emi>.Success(_mapper.Map<Emi>(local));
        }
    }

    public async Task<Result<List<Emi>>> GetByUserIdAsync(Guid userId, string? status = null)
    {
        try
        {
            _logger.LogInformation("Getting EMIs for user {UserId}", userId);
            var responses = await RestService.GetEmisAsync(userId, status);
            var emis = _mapper.Map<List<Emi>>(responses);
            await CacheEmisLocallyAsync(userId, emis);
            return Result<List<Emi>>.Success(emis);
        }
        catch (Exception ex)
        {
            _logger.LogWarning(ex, "API unavailable, falling back to local DB for EMIs");
            var query = _localDb.Emis.Where(e => e.UserId == userId);
            if (!string.IsNullOrEmpty(status))
                query = query.Where(e => e.Status == status);
            var local = await query.ToListAsync();
            return Result<List<Emi>>.Success(_mapper.Map<List<Emi>>(local));
        }
    }

    public async Task<Result<Emi>> CreateAsync(Emi emi)
    {
        try
        {
            _logger.LogInformation("Creating EMI for user {UserId}", emi.UserId);
            var request = _mapper.Map<CreateEmiRequest>(emi);
            var response = await RestService.CreateEmiAsync(emi.UserId, request);
            var created = _mapper.Map<Emi>(response);
            await UpsertLocalEmiAsync(created, SyncStatus.Synced);
            return Result<Emi>.Success(created);
        }
        catch (Exception ex)
        {
            _logger.LogWarning(ex, "API unavailable, saving EMI locally with PendingCreate");
            emi.Id = emi.Id == Guid.Empty ? Guid.NewGuid() : emi.Id;
            emi.CreatedAt = DateTime.UtcNow;
            await UpsertLocalEmiAsync(emi, SyncStatus.PendingCreate);
            return Result<Emi>.Success(emi);
        }
    }

    public async Task<Result> UpdateAsync(Emi emi)
    {
        try
        {
            _logger.LogInformation("Updating EMI {EmiId}", emi.Id);
            var request = _mapper.Map<UpdateEmiRequest>(emi);
            await RestService.UpdateEmiAsync(emi.UserId, emi.Id, request);
            await UpsertLocalEmiAsync(emi, SyncStatus.Synced);
            return Result.Success();
        }
        catch (Exception ex)
        {
            _logger.LogWarning(ex, "API unavailable, saving EMI update locally with PendingUpdate");
            await UpsertLocalEmiAsync(emi, SyncStatus.PendingUpdate);
            return Result.Success();
        }
    }

    public async Task<Result> DeleteAsync(Guid userId, Guid emiId)
    {
        try
        {
            _logger.LogInformation("Deleting EMI {EmiId}", emiId);
            await RestService.DeleteEmiAsync(userId, emiId);
            var local = await _localDb.Emis.FirstOrDefaultAsync(e => e.Id == emiId);
            if (local != null) { _localDb.Emis.Remove(local); await _localDb.SaveChangesAsync(); }
            return Result.Success();
        }
        catch (Exception ex)
        {
            _logger.LogWarning(ex, "API unavailable, marking EMI {EmiId} as PendingDelete", emiId);
            var local = await _localDb.Emis.FirstOrDefaultAsync(e => e.Id == emiId);
            if (local != null) { local.SyncStatus = SyncStatus.PendingDelete; await _localDb.SaveChangesAsync(); }
            return Result.Success();
        }
    }

    private async Task CacheEmisLocallyAsync(Guid userId, List<Emi> emis)
    {
        try
        {
            var existing = await _localDb.Emis
                .Where(e => e.UserId == userId && e.SyncStatus == SyncStatus.Synced)
                .ToListAsync();
            _localDb.Emis.RemoveRange(existing);
            _localDb.Emis.AddRange(emis.Select(e => _mapper.Map<LocalEmi>(e)));
            await _localDb.SaveChangesAsync();
        }
        catch (Exception ex)
        {
            _logger.LogWarning(ex, "Failed to cache EMIs locally");
        }
    }

    private async Task UpsertLocalEmiAsync(Emi emi, SyncStatus status)
    {
        try
        {
            var local = await _localDb.Emis.FirstOrDefaultAsync(e => e.Id == emi.Id);
            if (local == null)
            {
                local = _mapper.Map<LocalEmi>(emi);
                local.SyncStatus = status;
                _localDb.Emis.Add(local);
            }
            else
            {
                _mapper.Map(emi, local);
                local.SyncStatus = status;
            }
            await _localDb.SaveChangesAsync();
        }
        catch (Exception ex)
        {
            _logger.LogWarning(ex, "Failed to upsert EMI locally");
        }
    }
}
