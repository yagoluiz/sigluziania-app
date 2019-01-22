
using Newtonsoft.Json;
namespace SIG_Luziania_Web.ViewModels
{
    public class MapaEducacaoViewModel
    {
        [JsonProperty(Order = 0)]
        public int EducacaoId { get; set; }

        [JsonProperty(PropertyName = "Nº Mec", Order = 2)]
        public string MecId { get; set; }

        [JsonProperty(Order = 1)]
        public string Nome { get; set; }

        [JsonProperty(PropertyName = "Endereço", Order = 3)]
        public string Endereco { get; set; }

        [JsonProperty(Order = 4)]
        public string Bairro { get; set; }

        [JsonProperty(Order = 5)]
        public string Cep { get; set; }

        [JsonProperty(Order = 6)]
        public string Telefone { get; set; }

        [JsonProperty(Order = 7)]
        public string Gestor { get; set; }

        [JsonProperty(Order = 8)]
        public string Zona { get; set; }

        [JsonProperty(PropertyName = "Dependência Administrativa", Order = 9)]
        public string DependenciaAdministrativa { get; set; }

        [JsonProperty(Order = 10)]
        public double Latitude { get; set; }

        [JsonProperty(Order = 11)]
        public double Longitude { get; set; }
    }
}