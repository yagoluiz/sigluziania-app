using Newtonsoft.Json;
using SIG_Luziania_Web.Models;
using SIG_Luziania_Web.ViewModels;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Text;
using System.Web.Http;

namespace SIG_Luziania_Web.Controllers.Api
{
    [RoutePrefix("api/grafico")]
    public class GraficoController : ApiController
    {
        private readonly SigLuzianiaContexto db = null;

        public GraficoController()
        {
            this.db = new SigLuzianiaContexto();
        }

        // GET: api/ideb-inicial
        [Route("ideb-inicial")]
        public HttpResponseMessage GetAvaliacaoIdebInicial()
        {
            List<GraficoAvaliacaoViewModel> AvaliacaoIdeb = this.ListAvaliacaoIdeb(Enum.DependenciaAdministrativa.Municipal.ToString());
            List<GraficoAvaliacaoViewModel> Avaliacoes = new List<GraficoAvaliacaoViewModel>();

            foreach (var item in AvaliacaoIdeb)
            {
                if (!(Avaliacoes.Any(x => x.Instituicao == item.Instituicao)))
                {
                    var notas = AvaliacaoIdeb.Where(x => x.Instituicao == item.Instituicao).Select(x => x.Nota).ToArray();

                    Avaliacoes.Add(new GraficoAvaliacaoViewModel()
                    {
                        Avaliacao = item.Avaliacao,
                        Instituicao = item.Instituicao,
                        Notas = notas,
                        DependenciaAdministrativa = item.DependenciaAdministrativa
                    });
                }
            }

            return new HttpResponseMessage(HttpStatusCode.OK)
            {
                Content = new StringContent(JsonConvert.SerializeObject(Avaliacoes.OrderBy(x => x.Instituicao)), Encoding.UTF8, "application/json")
            };
        }

        // GET: api/ideb-final
        [Route("ideb-final")]
        public HttpResponseMessage GetAvaliacaoIdebFinal()
        {
            List<GraficoAvaliacaoViewModel> AvaliacaoIdeb = this.ListAvaliacaoIdeb(Enum.DependenciaAdministrativa.Estadual.ToString());
            List<GraficoAvaliacaoViewModel> Avaliacoes = new List<GraficoAvaliacaoViewModel>();

            foreach (var item in AvaliacaoIdeb)
            {
                if (!(Avaliacoes.Any(x => x.Instituicao == item.Instituicao)))
                {
                    var notas = AvaliacaoIdeb.Where(x => x.Instituicao == item.Instituicao).Select(x => x.Nota).ToArray();

                    Avaliacoes.Add(new GraficoAvaliacaoViewModel()
                    {
                        Avaliacao = item.Avaliacao,
                        Instituicao = item.Instituicao,
                        Notas = notas,
                        DependenciaAdministrativa = item.DependenciaAdministrativa
                    });
                }
            }

            return new HttpResponseMessage(HttpStatusCode.OK)
            {
                Content = new StringContent(JsonConvert.SerializeObject(Avaliacoes.OrderBy(x => x.Instituicao)), Encoding.UTF8, "application/json")
            };
        }

        // GET: api/enem
        [Route("enem")]
        public HttpResponseMessage GetAvaliacaoEnem()
        {
            List<GraficoAvaliacaoViewModel> AvaliacaoEnem = this.ListAvaliacaoEnem();
            List<GraficoAvaliacaoViewModel> Avaliacoes = new List<GraficoAvaliacaoViewModel>();

            foreach (var item in AvaliacaoEnem)
            {
                if (!(Avaliacoes.Any(x => x.Instituicao == item.Instituicao)))
                {
                    var notas = AvaliacaoEnem.Where(x => x.Instituicao == item.Instituicao).Select(x => x.Nota).ToArray();

                    Avaliacoes.Add(new GraficoAvaliacaoViewModel()
                    {
                        Avaliacao = item.Avaliacao,
                        Instituicao = item.Instituicao,
                        Notas = notas,
                        DependenciaAdministrativa = item.DependenciaAdministrativa
                    });
                }
            }

            return new HttpResponseMessage(HttpStatusCode.OK)
            {
                Content = new StringContent(JsonConvert.SerializeObject(Avaliacoes.OrderBy(x => x.Instituicao)), Encoding.UTF8, "application/json")
            };
        }

        [Route("ideb-anos")]
        public HttpResponseMessage GetAnosAvaliacaoIdeb()
        {
            var anos = this.ListAnoAvaliacao((int)Enum.Avaliacao.IDEB);

            return new HttpResponseMessage(HttpStatusCode.OK)
            {
                Content = new StringContent(JsonConvert.SerializeObject(anos), Encoding.UTF8, "application/json")
            };
        }

        [Route("enem-anos")]
        public HttpResponseMessage GetAnosAvaliacaoEnem()
        {
            var anos = this.ListAnoAvaliacao((int)Enum.Avaliacao.ENEM);

            return new HttpResponseMessage(HttpStatusCode.OK)
            {
                Content = new StringContent(JsonConvert.SerializeObject(anos), Encoding.UTF8, "application/json")
            };
        }

        private List<GraficoAvaliacaoViewModel> ListAvaliacaoIdeb(string dependencia)
        {
            var avaliacao = db.EducacaoAvaliacao.Join(db.Educacao, a => a.EducacaoId, e => e.EducacaoId, (a, e) =>
                new { a.AvaliacaoId, e.Nome, a.Nota, e.DependenciaAdministrativa })
                .Where(x => x.AvaliacaoId == (int)Enum.Avaliacao.IDEB && x.DependenciaAdministrativa.Equals(dependencia))
                .Select(x =>
                    new GraficoAvaliacaoViewModel()
                    {
                        Avaliacao = x.AvaliacaoId,
                        Instituicao = x.Nome,
                        Nota = x.Nota,
                        DependenciaAdministrativa = x.DependenciaAdministrativa

                    }).ToList();

            return avaliacao;
        }

        private List<GraficoAvaliacaoViewModel> ListAvaliacaoEnem()
        {
            var avaliacao = db.EducacaoAvaliacao.Join(db.Educacao, a => a.EducacaoId, e => e.EducacaoId, (a, e) =>
                new { a.AvaliacaoId, e.Nome, a.Nota, e.DependenciaAdministrativa })
                .Where(x => x.AvaliacaoId == (int)Enum.Avaliacao.ENEM)
                .Select(x =>
                    new GraficoAvaliacaoViewModel()
                    {
                        Avaliacao = x.AvaliacaoId,
                        Instituicao = x.Nome,
                        Nota = x.Nota,
                        DependenciaAdministrativa = x.DependenciaAdministrativa

                    }).ToList();

            return avaliacao;
        }

        private object ListAnoAvaliacao(int avaliacao)
        {
            return db.EducacaoAvaliacao.Where(x => x.AvaliacaoId == avaliacao)
                .Select(x => new { x.Ano }).ToList().Distinct().OrderBy(x => x.Ano);
        }
    }
}