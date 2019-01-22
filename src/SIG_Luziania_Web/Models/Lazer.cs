using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace SIG_Luziania_Web.Models
{
    [Table("lazer")]
    public class Lazer
    {
        [Key, Column("id_lazer")]
        public int LazerId { get; set; }

        [Column("cidade_id")]
        public int CidadeId { get; set; }

        [Column("tipo_lazer_id")]
        public int TipoLazerId { get; set; }

        [Column("nome")]
        public string Nome { get; set; }

        [Column("endereco")]
        public string Endereco { get; set; }

        [Column("bairro")]
        public string Bairro { get; set; }

        [Column("cep")]
        public string Cep { get; set; }

        [Column("telefone")]
        public string Telefone { get; set; }

        [Column("latitude")]
        public double Latitude { get; set; }

        [Column("longitude")]
        public double Longitude { get; set; }

        [ForeignKey("CidadeId")]
        public virtual Cidade Cidade { get; set; }

        [ForeignKey("TipoLazerId")]
        public virtual TipoLazer TipoLazer { get; set; }
    }
}