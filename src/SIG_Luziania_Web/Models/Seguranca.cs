using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace SIG_Luziania_Web.Models
{
    [Table("seguranca")]
    public class Seguranca
    {
        [Key, Column("id_seguranca")]
        public int SegurancaId { get; set; }

        [Column("cidade_id")]
        public int CidadeId { get; set; }

        [Column("tipo_seguranca_id")]
        public int TipoSegurancaId { get; set; }

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

        [ForeignKey("TipoSegurancaId")]
        public virtual TipoSeguranca TipoSeguranca { get; set; }
    }
}