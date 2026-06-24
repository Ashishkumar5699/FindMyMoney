using AutoMapper;
using FindMyMoney.Domain.DTOs.Expenses;
using FindMyMoney.Domain.Models;
using FindMyMoney.Infrastructure.Local.Entities;

namespace FindMyMoney.Infrastructure.Mappers;

public class ExpenseProfile : Profile
{
    public ExpenseProfile()
    {
        CreateMap<ExpenseResponse, Expense>()
            .ForMember(dest => dest.Amount, opt => opt.MapFrom(src => (decimal)src.Amount))
            .ForMember(dest => dest.Category, opt => opt.MapFrom(src => src.Category ?? string.Empty))
            .ForMember(dest => dest.Description, opt => opt.MapFrom(src => src.Description ?? string.Empty));

        CreateMap<Expense, CreateExpenseRequest>()
            .ForMember(dest => dest.Amount, opt => opt.MapFrom(src => (double)src.Amount));

        CreateMap<Expense, UpdateExpenseRequest>()
            .ForMember(dest => dest.Amount, opt => opt.MapFrom(src => (double)src.Amount));

        CreateMap<Expense, LocalExpense>().ReverseMap()
            .ForMember(dest => dest.User, opt => opt.Ignore());

        CreateMap<LocalExpense, CreateExpenseRequest>()
            .ForMember(dest => dest.Amount, opt => opt.MapFrom(src => (double)src.Amount));
        CreateMap<LocalExpense, UpdateExpenseRequest>()
            .ForMember(dest => dest.Amount, opt => opt.MapFrom(src => (double)src.Amount));
    }
}
