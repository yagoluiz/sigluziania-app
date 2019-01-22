$(function () {

    var serieIdebInicial = [],
        serieIdebFinal = [],
        anos = [],
        baseUrl = $("base").attr("href");

    function setConteudo() {

        var uriGraphic = ['/api/grafico/ideb-inicial', '/api/grafico/ideb-final'];

        $.each(uriGraphic, function (i) {
            $.getJSON(baseUrl + uriGraphic[i])
                .done(function (data) {
                    $.each(data, function (i, obj) {
                        setDataConteudo(obj);
                    });

                    setGraficoIdebInicial(serieIdebInicial, anos);
                    setGraficoIdebFinal(serieIdebFinal, anos);
                })
               .error(function () {
                   alert('Erro ao carrega gráfico.');
               });
        });
    }

    function setAnos() {

        var uriAnos = ['/api/grafico/ideb-anos'];

        $.each(uriAnos, function (i) {
            $.getJSON(baseUrl + uriAnos[i])
                .done(function (data) {
                    $.each(data, function (i, obj) {
                        setDataAnos(obj);
                    });
                })
               .error(function () {
                   alert('Erro ao carrega anos.');
               });
        });
    }

    function setDataConteudo(obj) {

        var dados = {
            name: obj.Instituicao,
            data: obj.Notas
        };

        setAvaliacao(obj.Avaliacao, obj.Dependencia, dados);
    }

    function setDataAnos(obj) {

        anos.push(obj.Ano);
    }

    function setAvaliacao(avaliacao, dependencia, dados) {

        switch (avaliacao) {
            case 1: // Municipal
                if (dependencia === "Municipal") {
                    serieIdebInicial.push(dados)
                    break;
                }
            default: // Estadual 
                serieIdebFinal.push(dados);
                break;
        }
    }

    function setGraficoIdebInicial(serie, anos) {

        Highcharts.setOptions({

            lang: {
                decimalPoint: ",",
                printChart: "Imprimir gráfico",
                downloadJPEG: "Baixar imagem JPEG",
                downloadPDF: "Baixar PDF",
                downloadPNG: "Baixar imagem PNG",
                downloadSVG: "Baixar SVG"
            }
        });

        $('#graphicIdebInicial').highcharts({
            title: {
                text: 'IDEB - Anos Iniciais  (1º ao 5º ano)',
                x: -20
            },
            subtitle: {
                text: 'Índice de Desenvolvimento da Educação Básica',
                x: -20
            },
            xAxis: {
                categories: anos
            },
            yAxis: {
                title: {
                    text: 'Notas'
                },
                plotLines: [{
                    value: 0,
                    width: 1,
                    color: '#808080'
                }]
            },
            series: serie
        });
    }

    function setGraficoIdebFinal(serie, anos) {

        Highcharts.setOptions({

            lang: {
                decimalPoint: ",",
                printChart: "Imprimir gráfico",
                downloadJPEG: "Baixar imagem JPEG",
                downloadPDF: "Baixar PDF",
                downloadPNG: "Baixar imagem PNG",
                downloadSVG: "Baixar SVG"
            }
        });

        $('#graphicIdebFinal').highcharts({
            title: {
                text: 'IDEB - Anos Finais  (6º ao 9º ano)',
                x: -20
            },
            subtitle: {
                text: 'Índice de Desenvolvimento da Educação Básica',
                x: -20
            },
            xAxis: {
                categories: anos
            },
            yAxis: {
                title: {
                    text: 'Notas'
                },
                plotLines: [{
                    value: 0,
                    width: 1,
                    color: '#808080'
                }]
            },
            series: serie
        });
    }

    $(function () {
        setAnos();
        setConteudo();
    });
});