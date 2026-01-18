using AutoMapper;
using FindMyMoney.Domain.IService;

namespace FindMyMoney.Application.Services;

/// <summary>
/// Base service class providing common functionality for all services
/// </summary>
/// <typeparam name="TRepository">The repository type</typeparam>
public abstract class BaseService<TRepository>(
    TRepository repository,
    IDialogService dialogService,
    IMapper mapper,
    IUserService userService)
{
    private protected readonly TRepository Repository = repository;
    
    private protected readonly IDialogService DialogService = dialogService;

    private protected readonly IMapper Mapper = mapper;

    private protected bool IsOnline => true;//Connectivity.NetworkAccess == NetworkAccess.Internet;
    
    protected readonly IUserService UserService = userService;
}
