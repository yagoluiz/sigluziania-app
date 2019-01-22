using Newtonsoft.Json;

namespace SIG_Luziania_Web.ViewModels
{
    public class GraficoAvaliacaoViewModel
    {
        [JsonProperty(Order = 1)]
        public string Instituicao { get; set; }

        [JsonProperty(Order = 2)]
        public float?[] Notas { get; set; }

        [JsonProperty(Order = 3)]
        public int Avaliacao { get; set; }

        [JsonProperty(PropertyName = "Dependencia", Order = 4)]
        public string DependenciaAdministrativa { get; set; }

        [JsonProperty(NullValueHandling = NullValueHandling.Ignore)]
        public float? Nota { get; set; }
    }
}