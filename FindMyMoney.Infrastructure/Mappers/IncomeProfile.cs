using AutoMapper;
using FindMyMoney.Domain.DTOs.Incomes;
using FindMyMoney.Domain.Models;
using FindMyMoney.Infrastructure.Local.Entities;

namespace FindMyMoney.Infrastructure.Mappers;

public class IncomeProfile : Profile
{
    public IncomeProfile()
    {
        CreateMap<IncomeResponse, Income>()
            .ForMember(dest => dest.Amount, opt => opt.MapFrom(src => (decimal)src.Amount))
            .ForMember(dest => dest.Source, opt => opt.MapFrom(src => src.Source ?? string.Empty))
            .ForMember(dest => dest.Description, opt => opt.MapFrom(src => src.Description ?? string.Empty));

        CreateMap<Income, CreateIncomeRequest>()
            .ForMember(dest => dest.Amount, opt => opt.MapFrom(src => (double)src.Amount));

        CreateMap<Income, UpdateIncomeRequest>()
            .ForMember(dest => dest.Amount, opt => opt.MapFrom(src => (double)src.Amount));

        CreateMap<Income, LocalIncome>().ReverseMap()
            .ForMember(dest => dest.User, opt => opt.Ignore());

        CreateMap<LocalIncome, CreateIncomeRequest>()
            .ForMember(dest => dest.Amount, opt => opt.MapFrom(src => (double)src.Amount));
        CreateMap<LocalIncome, UpdateIncomeRequest>()
            .ForMember(dest => dest.Amount, opt => opt.MapFrom(src => (double)src.Amount));
    }
}
