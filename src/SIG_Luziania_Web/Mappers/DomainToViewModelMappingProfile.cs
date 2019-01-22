using AutoMapper;
using SIG_Luziania_Web.Areas.Administrador.ViewModels;
using SIG_Luziania_Web.Models;

namespace SIG_Luziania_Web.Mappers
{
    public class DomainToViewModelMappingProfile : Profile
    {
        public override string ProfileName
        {
            get
            {
                return "DomainToViewModelMappings";
            }
        }

        protected override void Configure()
        {
            Mapper.CreateMap<Usuario, UsuarioViewModel>();
            Mapper.CreateMap<Perfil, PerfilViewModel>();
            Mapper.CreateMap<TipoLazer, TipoLazerViewModel>();
            Mapper.CreateMap<Lazer, LazerViewModel>();
            Mapper.CreateMap<Lazer, ViewModels.LazerViewModel>();
            Mapper.CreateMap<TipoSeguranca, TipoSegurancaViewModel>();
            Mapper.CreateMap<Seguranca, SegurancaViewModel>();
            Mapper.CreateMap<Seguranca, ViewModels.SegurancaViewModel>();
            Mapper.CreateMap<Educacao, EducacaoViewModel>();
            Mapper.CreateMap<Educacao, ViewModels.EducacaoViewModel>();
            Mapper.CreateMap<Avaliacao, AvaliacaoViewModel>();
            Mapper.CreateMap<EducacaoAvaliacao, EducacaoAvaliacaoViewModel>();
            Mapper.CreateMap<TipoSaude, TipoSaudeViewModel>();
            Mapper.CreateMap<Saude, SaudeViewModel>();
            Mapper.CreateMap<Saude, ViewModels.SaudeViewModel>();
            Mapper.CreateMap<Especialidade, EspecialidadeViewModel>();
            Mapper.CreateMap<SaudeEspecialidade, SaudeEspecialidadeViewModel>();
            Mapper.CreateMap<SaudeEspecialidade, ViewModels.EspecialidadeViewModel>();
        }
    }
}