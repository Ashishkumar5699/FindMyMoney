using AutoMapper;
using FindMyMoney.Domain.DTOs.Emis;
using FindMyMoney.Domain.DTOs.Expenses;
using FindMyMoney.Domain.DTOs.Incomes;
using FindMyMoney.Domain.IService;
using FindMyMoney.Infrastructure.ApiClients;
using FindMyMoney.Infrastructure.Local;
using FindMyMoney.Infrastructure.Local.Entities;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Logging;

namespace FindMyMoney.Infrastructure.Services;

public class SyncService(
    LocalDbContext localDb,
    IExpenseRESTRepository expenseApi,
    IIncomeRESTRepository incomeApi,
    IEmiRESTRepository emiApi,
    IMapper mapper,
    ILogger<SyncService> logger) : ISyncService
{
    public async Task SyncPendingAsync()
    {
        logger.LogInformation("Starting sync of pending local records");
        await SyncExpensesAsync();
        await SyncIncomesAsync();
        await SyncEmisAsync();
        logger.LogInformation("Sync completed");
    }

    private async Task SyncExpensesAsync()
    {
        var pending = await localDb.Expenses
            .Where(e => e.SyncStatus != SyncStatus.Synced)
            .ToListAsync();

        foreach (var item in pending)
        {
            try
            {
                switch (item.SyncStatus)
                {
                    case SyncStatus.PendingCreate:
                        var createReq = mapper.Map<CreateExpenseRequest>(item);
                        await expenseApi.CreateExpenseAsync(item.UserId, createReq);
                        item.SyncStatus = SyncStatus.Synced;
                        break;
                    case SyncStatus.PendingUpdate:
                        var updateReq = mapper.Map<UpdateExpenseRequest>(item);
                        await expenseApi.UpdateExpenseAsync(item.UserId, item.Id, updateReq);
                        item.SyncStatus = SyncStatus.Synced;
                        break;
                    case SyncStatus.PendingDelete:
                        await expenseApi.DeleteExpenseAsync(item.UserId, item.Id);
                        localDb.Expenses.Remove(item);
                        break;
                }
            }
            catch (Exception ex)
            {
                logger.LogWarning(ex, "Failed to sync expense {Id}, will retry next time", item.Id);
            }
        }

        await localDb.SaveChangesAsync();
    }

    private async Task SyncIncomesAsync()
    {
        var pending = await localDb.Incomes
            .Where(e => e.SyncStatus != SyncStatus.Synced)
            .ToListAsync();

        foreach (var item in pending)
        {
            try
            {
                switch (item.SyncStatus)
                {
                    case SyncStatus.PendingCreate:
                        var createReq = mapper.Map<CreateIncomeRequest>(item);
                        await incomeApi.CreateIncomeAsync(item.UserId, createReq);
                        item.SyncStatus = SyncStatus.Synced;
                        break;
                    case SyncStatus.PendingUpdate:
                        var updateReq = mapper.Map<UpdateIncomeRequest>(item);
                        await incomeApi.UpdateIncomeAsync(item.UserId, item.Id, updateReq);
                        item.SyncStatus = SyncStatus.Synced;
                        break;
                    case SyncStatus.PendingDelete:
                        await incomeApi.DeleteIncomeAsync(item.UserId, item.Id);
                        localDb.Incomes.Remove(item);
                        break;
                }
            }
            catch (Exception ex)
            {
                logger.LogWarning(ex, "Failed to sync income {Id}, will retry next time", item.Id);
            }
        }

        await localDb.SaveChangesAsync();
    }

    private async Task SyncEmisAsync()
    {
        var pending = await localDb.Emis
            .Where(e => e.SyncStatus != SyncStatus.Synced)
            .ToListAsync();

        foreach (var item in pending)
        {
            try
            {
                switch (item.SyncStatus)
                {
                    case SyncStatus.PendingCreate:
                        var createReq = mapper.Map<CreateEmiRequest>(item);
                        await emiApi.CreateEmiAsync(item.UserId, createReq);
                        item.SyncStatus = SyncStatus.Synced;
                        break;
                    case SyncStatus.PendingUpdate:
                        var updateReq = mapper.Map<UpdateEmiRequest>(item);
                        await emiApi.UpdateEmiAsync(item.UserId, item.Id, updateReq);
                        item.SyncStatus = SyncStatus.Synced;
                        break;
                    case SyncStatus.PendingDelete:
                        await emiApi.DeleteEmiAsync(item.UserId, item.Id);
                        localDb.Emis.Remove(item);
                        break;
                }
            }
            catch (Exception ex)
            {
                logger.LogWarning(ex, "Failed to sync EMI {Id}, will retry next time", item.Id);
            }
        }

        await localDb.SaveChangesAsync();
    }
}
