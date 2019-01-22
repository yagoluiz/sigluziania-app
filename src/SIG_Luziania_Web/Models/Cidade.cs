using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace SIG_Luziania_Web.Models
{
    [Table("cidade")]
    public class Cidade
    {
        public Cidade()
        {
            this.Lazer = new List<Lazer>();
            this.Seguranca = new List<Seguranca>();
            this.Educacao = new List<Educacao>();
            this.Saude = new List<Saude>();
        }

        [Key, Column("id_cidade")]
        public int CidadeId { get; set; }

        [Column("id_ibge")]
        public int IbgeId { get; set; }

        [Column("nome")]
        public string Nome { get; set; }

        [Column("estado")]
        public string Estado { get; set; }

        [Column("regiao")]
        public string Regiao { get; set; }

        [Column("populacao")]
        public int Populacao { get; set; }

        [Column("densidade_demografica")]
        public decimal DensidadeDemografica { get; set; }

        [Column("area_territorial")]
        public decimal AreaTerritorial { get; set; }

        [Column("gentilico")]
        public string Gentilico { get; set; }

        [Column("pib")]
        public decimal Pib { get; set; }

        [Column("idhm")]
        public decimal Idhm { get; set; }

        [Column("data_fundacao")]
        public DateTime DataFundacao { get; set; }

        public virtual ICollection<Lazer> Lazer { get; set; }
        public virtual ICollection<Seguranca> Seguranca { get; set; }
        public virtual ICollection<Educacao> Educacao { get; set; }
        public virtual ICollection<Saude> Saude { get; set; }
    }
}