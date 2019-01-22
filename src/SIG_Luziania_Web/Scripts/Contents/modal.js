function setModal(view) {

    var baseUrl = $("base").attr("href"),
        pagina = baseUrl + view;

    var index = $(".index").click(function () {
        window.open(pagina, "_self");
    });

    var adicionar = $(".adicionar").click(function () {
        $("#modal").load(pagina + "/adicionar", function () {
            $("#modal").modal();
        });
    });

    var editar = $(".editar").click(function () {
        var id = $(this).attr("data-id");
        $("#modal").load(pagina + "/editar/" + id, function () {
            $("#modal").modal();
        })
    });

    var excluir = $(".excluir").click(function () {
        var id = $(this).attr("data-id");
        $("#modal").load(pagina + "/excluir/" + id, function () {
            $("#modal").modal();
        })
    });

    var modal = $("#modal").on("shown.bs.modal", function () {
        jQuery.validator.unobtrusive.parse($(this));
    })

    $(function () {
        index;
        adicionar;
        excluir;
        modal;
    });
}