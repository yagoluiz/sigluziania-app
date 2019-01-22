function getLocation() {
    if (navigator.geolocation) {
        navigator.geolocation.getCurrentPosition(setPosition, getError);
    } else {
        geo.innerHTML = "Localização não é suportada neste browser.";
    }
}

function setPosition(position) {

    lat = $("#Latitude").val(position.coords.latitude);
    long = $("#Longitude").val(position.coords.longitude);

    geo.innerHTML = "Localização atual ativada.";
}

function getError(error) {
    switch (error.code) {
        case error.PERMISSION_DENIED:
            geo.innerHTML = "Permissão de localização negada."
            break;
        case error.POSITION_UNAVAILABLE:
            geo.innerHTML = "As informações de localização não está disponível."
            break;
        case error.TIMEOUT:
            geo.innerHTML = "O pedido para obter a localização do usuário expirou."
            break;
        case error.UNKNOWN_ERROR:
            geo.innerHTML = "Ocorreu um erro desconhecido."
            break;
    }
}