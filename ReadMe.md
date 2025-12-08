FindMyMoney/
|
├── FindMyMoney.Domain/            <-- Entities, DTOs, pure logic
│     ├── Models/
│     └── ServicesContracts/
│           ├── IAuthService.cs
│           └── IApiService.cs
|
├── FindMyMoney.Application/       <-- ViewModels, application logic
│     ├── ViewModels/
│     └── UseCases/ (optional)
|
├── FindMyMoney.Infrastructure/    <-- Implementations of services
│     ├── ApiService.cs
│     ├── AuthService.cs
|
└── FindMyMoney.UI/ (MAUI project) <-- UI, DI, Startup
      ├── Views/
      ├── ViewModels/ (optional: forwarded from Application)
      ├── Helpers/
      ├── App.xaml
      └── MauiProgram.cs
