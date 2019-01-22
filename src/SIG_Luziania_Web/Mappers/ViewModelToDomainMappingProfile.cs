using AutoMapper;
using SIG_Luziania_Web.Areas.Administrador.ViewModels;
using SIG_Luziania_Web.Models;

namespace SIG_Luziania_Web.Mappers
{
    public class ViewModelToDomainMappingProfile : Profile
    {
        public override string ProfileName
        {
            get
            {
                return "ViewModelToDomainMappings";
            }
        }

        protected override void Configure()
        {
            Mapper.CreateMap<UsuarioViewModel, Usuario>();
            Mapper.CreateMap<PerfilViewModel, Perfil>();
            Mapper.CreateMap<TipoLazerViewModel, TipoLazer>();
            Mapper.CreateMap<LazerViewModel, Lazer>();
            Mapper.CreateMap<TipoSegurancaViewModel, TipoSeguranca>();
            Mapper.CreateMap<SegurancaViewModel, Seguranca>();
            Mapper.CreateMap<EducacaoViewModel, Educacao>();
            Mapper.CreateMap<AvaliacaoViewModel, Avaliacao>();
            Mapper.CreateMap<EducacaoAvaliacaoViewModel, EducacaoAvaliacao>();
            Mapper.CreateMap<TipoSaudeViewModel, TipoSaude>();
            Mapper.CreateMap<SaudeViewModel, Saude>();
            Mapper.CreateMap<EspecialidadeViewModel, Especialidade>();
            Mapper.CreateMap<SaudeEspecialidadeViewModel, SaudeEspecialidade>();
        }
    }
}