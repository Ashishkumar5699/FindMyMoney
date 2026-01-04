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
      ├── Helpers/
      ├── App.xaml
      └── MauiProgram.cs

MyApp.Domain
  └── Entities
  └── Interfaces

MyApp.Application (aka UI-Core)
  └── UseCases
  └── PresentationModels
  └── Validators

MyApp.UI (MAUI)
  └── Views
  └── ViewModels (thin)
  └── Navigation

MyApp.Infrastructure
  └── Api
  └── Database

