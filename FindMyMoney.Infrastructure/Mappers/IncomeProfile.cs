using AutoMapper;
using FindMyMoney.Domain.DTOs.Incomes;
using FindMyMoney.Domain.Models;

namespace FindMyMoney.Infrastructure.Mappers;

/// <summary>
/// AutoMapper profile for Income mappings
/// </summary>
public class IncomeProfile : Profile
{
    public IncomeProfile()
    {
        // IncomeResponse -> Income
        CreateMap<IncomeResponse, Income>()
            .ForMember(dest => dest.Amount, opt => opt.MapFrom(src => (decimal)src.Amount))
            .ForMember(dest => dest.Source, opt => opt.MapFrom(src => src.Source ?? string.Empty))
            .ForMember(dest => dest.Description, opt => opt.MapFrom(src => src.Description ?? string.Empty));

        // Income -> CreateIncomeRequest
        CreateMap<Income, CreateIncomeRequest>()
            .ForMember(dest => dest.Amount, opt => opt.MapFrom(src => (double)src.Amount));

        // Income -> UpdateIncomeRequest
        CreateMap<Income, UpdateIncomeRequest>()
            .ForMember(dest => dest.Amount, opt => opt.MapFrom(src => (double)src.Amount));
    }
}
