using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace SIG_Luziania_Web.Models
{
    [Table("saude")]
    public class Saude
    {
        public Saude()
        {
            this.SaudeEspecialidade = new List<SaudeEspecialidade>();
        }

        [Key, Column("id_saude")]
        public int SaudeId { get; set; }

        [Column("cidade_id")]
        public int CidadeId { get; set; }

        [Column("tipo_saude_id")]
        public int TipoSaudeId { get; set; }

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

        [ForeignKey("TipoSaudeId")]
        public virtual TipoSaude TipoSaude { get; set; }

        public virtual ICollection<SaudeEspecialidade> SaudeEspecialidade { get; set; }
    }
}