using AutoMapper;
using FindMyMoney.Domain.DTOs.Expenses;
using FindMyMoney.Domain.Models;

namespace FindMyMoney.Infrastructure.Mappers;

/// <summary>
/// AutoMapper profile for Expense mappings
/// </summary>
public class ExpenseProfile : Profile
{
    public ExpenseProfile()
    {
        // ExpenseResponse -> Expense
        CreateMap<ExpenseResponse, Expense>()
            .ForMember(dest => dest.Amount, opt => opt.MapFrom(src => (decimal)src.Amount))
            .ForMember(dest => dest.Category, opt => opt.MapFrom(src => src.Category ?? string.Empty))
            .ForMember(dest => dest.Description, opt => opt.MapFrom(src => src.Description ?? string.Empty));

        // Expense -> CreateExpenseRequest
        CreateMap<Expense, CreateExpenseRequest>()
            .ForMember(dest => dest.Amount, opt => opt.MapFrom(src => (double)src.Amount));

        // Expense -> UpdateExpenseRequest
        CreateMap<Expense, UpdateExpenseRequest>()
            .ForMember(dest => dest.Amount, opt => opt.MapFrom(src => (double)src.Amount));
    }
}
