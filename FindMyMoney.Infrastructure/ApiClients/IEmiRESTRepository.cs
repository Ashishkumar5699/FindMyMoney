using FindMyMoney.Domain.DTOs.Emis;
using Refit;

namespace FindMyMoney.Infrastructure.ApiClients;

public interface IEmiRESTRepository
{
    [Post("/api/findmymoney/Emis/{userId}")]
    Task<EmiResponse> CreateEmiAsync(Guid userId, [Body] CreateEmiRequest request);

    [Get("/api/findmymoney/Emis/{userId}")]
    Task<List<EmiResponse>> GetEmisAsync(Guid userId, [Query] string? status = null);

    [Get("/api/findmymoney/Emis/{userId}/{id}")]
    Task<EmiResponse> GetEmiByIdAsync(Guid userId, Guid id);

    [Put("/api/findmymoney/Emis/{userId}/{id}")]
    Task<EmiResponse> UpdateEmiAsync(Guid userId, Guid id, [Body] UpdateEmiRequest request);

    [Delete("/api/findmymoney/Emis/{userId}/{id}")]
    Task DeleteEmiAsync(Guid userId, Guid id);
}
