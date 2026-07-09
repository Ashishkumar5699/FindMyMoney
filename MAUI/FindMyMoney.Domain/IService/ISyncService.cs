namespace FindMyMoney.Domain.IService;

public interface ISyncService
{
    Task SyncPendingAsync();
}
