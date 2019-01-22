using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace SIG_Luziania_Web.Models
{
    [Table("educacao_avaliacao")]
    public class EducacaoAvaliacao
    {
        [Key, Column("id_educacao_avaliacao")]
        public int EducacaoAvaliacaoId { get; set; }

        [Column("educacao_id")]
        public int EducacaoId { get; set; }

        [Column("avaliacao_id")]
        public int AvaliacaoId { get; set; }

        [Column("nota")]
        public float? Nota { get; set; }

        [Column("ano")]
        public int Ano { get; set; }

        [ForeignKey("EducacaoId")]
        public virtual Educacao Educacao { get; set; }

        [ForeignKey("AvaliacaoId")]
        public virtual Avaliacao Avaliacao { get; set; }
    }
}