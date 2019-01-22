$(function () {

    var serie = [],
        anos = [],
        baseUrl = $("base").attr("href");

    function setConteudo() {

        var uriGraphic = ['/api/grafico/enem'];

        $.each(uriGraphic, function (i) {
            $.getJSON(baseUrl + uriGraphic[i])
                .done(function (data) {
                    $.each(data, function (i, obj) {
                        setDataConteudo(obj);
                    });

                    setGrafico(serie, anos);
                })
               .error(function () {
                   alert('Erro ao carrega gráfico.');
               });
        });
    }

    function setAnos() {

        var uriAnos = ['/api/grafico/enem-anos'];

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

        serie.push(dados);
    }

    function setDataAnos(obj) {

        anos.push(obj.Ano);
    }

    function setGrafico(serie, anos) {

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

        $('#graphicEnem').highcharts({
            title: {
                text: 'ENEM',
                x: -20
            },
            subtitle: {
                text: 'Exame Nacional do Ensino Médio',
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