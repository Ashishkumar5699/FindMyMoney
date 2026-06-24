using AutoMapper;
using FindMyMoney.Domain.DTOs.Emis;
using FindMyMoney.Domain.Models;
using FindMyMoney.Infrastructure.Local.Entities;

namespace FindMyMoney.Infrastructure.Mappers;

public class EmiProfile : Profile
{
    public EmiProfile()
    {
        CreateMap<EmiResponse, Emi>()
            .ForMember(d => d.TotalAmount, o => o.MapFrom(s => (decimal)s.TotalAmount))
            .ForMember(d => d.EmiAmount, o => o.MapFrom(s => (decimal)s.EmiAmount))
            .ForMember(d => d.InterestRate, o => o.MapFrom(s => (decimal)s.InterestRate));

        CreateMap<Emi, CreateEmiRequest>();
        CreateMap<Emi, UpdateEmiRequest>();

        CreateMap<Emi, LocalEmi>().ReverseMap();

        CreateMap<LocalEmi, CreateEmiRequest>();
        CreateMap<LocalEmi, UpdateEmiRequest>();
    }
}
