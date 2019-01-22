using Newtonsoft.Json;
using SIG_Luziania_Web.Models;
using SIG_Luziania_Web.ViewModels;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Text;
using System.Web.Http;

namespace SIG_Luziania_Web.Controllers.Api
{
    [RoutePrefix("api/mapa")]
    public class MapaController : ApiController
    {
        private readonly SigLuzianiaContexto db = null;

        public MapaController()
        {
            this.db = new SigLuzianiaContexto();
        }

        // GET: api/lazer
        [HttpGet]
        [Route("lazer")]
        public HttpResponseMessage GetLazer()
        {
            var lazer = db.Lazer.Join(db.TipoLazer, l => l.TipoLazerId, tl => tl.TipoLazerId, (l, tl) =>
                new MapaLazerViewModel()
                {
                    LazerId = l.LazerId,
                    Nome = l.Nome,
                    TipoLazer = tl.Nome,
                    Endereco = l.Endereco,
                    Bairro = l.Bairro,
                    Cep = !string.IsNullOrEmpty(l.Cep) ? l.Cep : "Não informado",
                    Telefone = !string.IsNullOrEmpty(l.Telefone) ? l.Telefone : "Não informado",
                    Latitude = l.Latitude,
                    Longitude = l.Longitude

                }).OrderBy(x => x.LazerId);

            return new HttpResponseMessage(HttpStatusCode.OK)
            {
                Content = new StringContent(JsonConvert.SerializeObject(lazer), Encoding.UTF8, "application/json")
            };
        }

        // GET: api/seguranca
        [Route("seguranca")]
        public HttpResponseMessage GetSeguranca()
        {
            var seguranca = db.Seguranca.Join(db.TipoSeguranca, s => s.TipoSegurancaId, ts => ts.TipoSegurancaId, (s, ts) =>
               new MapaSegurancaViewModel()
               {
                   SegurancaId = s.SegurancaId,
                   Nome = s.Nome,
                   TipoSeguranca = ts.Nome,
                   Endereco = s.Endereco,
                   Bairro = s.Bairro,
                   Cep = !string.IsNullOrEmpty(s.Cep) ? s.Cep : "Não informado",
                   Telefone = !string.IsNullOrEmpty(s.Telefone) ? s.Telefone : "Não informado",
                   Latitude = s.Latitude,
                   Longitude = s.Longitude

               }).OrderBy(x => x.SegurancaId);

            return new HttpResponseMessage(HttpStatusCode.OK)
            {
                Content = new StringContent(JsonConvert.SerializeObject(seguranca), Encoding.UTF8, "application/json")
            };
        }

        // GET: api/saude
        [Route("saude")]
        public HttpResponseMessage GetSaude()
        {
            var saude = db.Saude.Join(db.TipoSaude, s => s.TipoSaudeId, ts => ts.TipoSaudeId, (s, ts) =>
               new MapaSaudeViewModel()
               {
                   SaudeId = s.SaudeId,
                   Nome = s.Nome,
                   TipoSaude = ts.Nome,
                   Endereco = s.Endereco,
                   Bairro = s.Bairro,
                   Cep = !string.IsNullOrEmpty(s.Cep) ? s.Cep : "Não informado",
                   Telefone = !string.IsNullOrEmpty(s.Telefone) ? s.Telefone : "Não informado",
                   Latitude = s.Latitude,
                   Longitude = s.Longitude

               }).OrderBy(x => x.SaudeId);

            return new HttpResponseMessage(HttpStatusCode.OK)
            {
                Content = new StringContent(JsonConvert.SerializeObject(saude), Encoding.UTF8, "application/json")
            };
        }

        // GET: api/educacao
        [Route("educacao")]
        public HttpResponseMessage GetEducacao()
        {
            var educacao = db.Educacao.Select(e =>
                new MapaEducacaoViewModel()
                {
                    EducacaoId = e.EducacaoId,
                    MecId = e.MecId != null ? e.MecId.ToString() : "Não informado",
                    Nome = e.Nome,
                    Endereco = e.Endereco,
                    Bairro = e.Bairro,
                    Cep = !string.IsNullOrEmpty(e.Cep) ? e.Cep : "Não informado",
                    Telefone = !string.IsNullOrEmpty(e.Telefone) ? e.Telefone : "Não informado",
                    Gestor = !string.IsNullOrEmpty(e.Gestor) ? e.Gestor : "Não informado",
                    Zona = e.Zona,
                    DependenciaAdministrativa = e.DependenciaAdministrativa,
                    Latitude = e.Latitude,
                    Longitude = e.Longitude

                }).OrderBy(x => x.EducacaoId);

            return new HttpResponseMessage(HttpStatusCode.OK)
            {
                Content = new StringContent(JsonConvert.SerializeObject(educacao), Encoding.UTF8, "application/json")
            };
        }
    }
}