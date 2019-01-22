using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace SIG_Luziania_Web.Models
{
    [Table("educacao")]
    public class Educacao
    {
        public Educacao()
        {
            this.EducacaoAvaliacao = new List<EducacaoAvaliacao>();
        }

        [Key, Column("id_educacao")]
        public int EducacaoId { get; set; }

        [Column("cidade_id")]
        public int CidadeId { get; set; }

        [Column("id_mec")]
        public int? MecId { get; set; }

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

        [Column("gestor")]
        public string Gestor { get; set; }

        [Column("zona")]
        public string Zona { get; set; }

        [Column("dependencia_administrativa")]
        public string DependenciaAdministrativa { get; set; }

        [Column("latitude")]
        public double Latitude { get; set; }

        [Column("longitude")]
        public double Longitude { get; set; }

        [ForeignKey("CidadeId")]
        public virtual Cidade Cidade { get; set; }

        public virtual ICollection<EducacaoAvaliacao> EducacaoAvaliacao { get; set; }
    }
}