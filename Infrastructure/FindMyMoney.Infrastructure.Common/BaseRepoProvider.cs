using System;

namespace FindMyMoney.Infrastructure.Common;

public abstract class BaseRepoProvider<TRestService>(TRestService RestService)
{
    
    protected readonly TRestService RestService = RestService;

    //todo: Common functionality (e.g., handling device online/offline) can go here
}

public abstract class BaseRepoProvider<TRestService, TLocalService>(
    TRestService RestService, TLocalService localService)
    : BaseRepoProvider<TRestService>(RestService)
{
    protected readonly TLocalService LocalService = localService;


    // Additional methods that need _localService can be added here
}