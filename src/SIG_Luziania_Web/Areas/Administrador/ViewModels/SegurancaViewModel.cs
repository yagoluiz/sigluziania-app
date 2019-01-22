﻿using SIG_Luziania_Web.Models;
using System.ComponentModel.DataAnnotations;
using System.Web.Mvc;

namespace SIG_Luziania_Web.Areas.Administrador.ViewModels
{
    public class SegurancaViewModel
    {
        public int SegurancaId { get; set; }

        [Display(Name = "Cidade")]
        [Range(1, int.MaxValue, ErrorMessage = "Obrigatório informar a cidade.")]
        [Required(ErrorMessage = "Obrigatório informar a cidade.")]
        public int CidadeId { get; set; }

        [Display(Name = "Tipo Segurança")]
        [Required(ErrorMessage = "Obrigatório informar o tipo de segurança.")]
        [Range(1, int.MaxValue, ErrorMessage = "Obrigatório informar o tipo de segurança.")]
        public int TipoSegurancaId { get; set; }

        [Required(ErrorMessage = "Obrigatório informar o nome.")]
        [MinLength(10, ErrorMessage = "É permitido no mínimo 10 caracteres."), MaxLength(100, ErrorMessage = "É permitido no máximo 100 caracteres.")]
        [Remote("VerificarSeguranca", "Seguranca", AreaReference.UseCurrent, ErrorMessage = "Já existe uma segurança com esse nome.", AdditionalFields = "SegurancaId")]
        public string Nome { get; set; }

        [Display(Name = "Endereço")]
        [Required(ErrorMessage = "Obrigatório informar o endereço.")]
        [MinLength(5, ErrorMessage = "É permitido no mínimo 5 caracteres."), MaxLength(200, ErrorMessage = "É permitido no máximo 200 caracteres.")]
        public string Endereco { get; set; }

        [Required(ErrorMessage = "Obrigatório informar o bairro.")]
        [MinLength(5, ErrorMessage = "É permitido no mínimo 5 caracteres."), MaxLength(50, ErrorMessage = "É permitido no máximo 50 caracteres.")]
        public string Bairro { get; set; }

        [DataType(DataType.PostalCode)]
        public string Cep { get; set; }

        [DataType(DataType.PhoneNumber)]
        public string Telefone { get; set; }

        [Required(ErrorMessage = "Obrigatório informar a latitude.")]
        [RegularExpressionAttribute(@"^-?([1-8]?[1-9]|[1-9]0)\.{1}\d{1,20}", ErrorMessage = "Formato inválido.")]
        public double Latitude { get; set; }

        [Required(ErrorMessage = "Obrigatório informar a longitude.")]
        [RegularExpressionAttribute(@"^-?([1]?[1-7][1-9]|[1]?[1-8][0]|[1-9]?[0-9])\.{1}\d{1,20}", ErrorMessage = "Formato inválido.")]
        public double Longitude { get; set; }

        public virtual Cidade Cidade { get; set; }

        public virtual TipoSeguranca TipoSeguranca { get; set; }
    }
}