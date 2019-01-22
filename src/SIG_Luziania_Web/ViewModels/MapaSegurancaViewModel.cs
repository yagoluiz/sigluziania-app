
using Newtonsoft.Json;
namespace SIG_Luziania_Web.ViewModels
{
    public class MapaSegurancaViewModel
    {
        [JsonProperty(Order = 0)]
        public int SegurancaId { get; set; }

        [JsonProperty(PropertyName = "Tipo", Order = 2)]
        public string TipoSeguranca { get; set; }

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
        public double Latitude { get; set; }

        [JsonProperty(Order = 8)]
        public double Longitude { get; set; }
    }
}