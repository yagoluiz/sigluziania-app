$(function () {

    var map = null,
        mapStreet = null,
        mapSatelite = null,
        searchLayer = null,
        lazer = new L.LayerGroup(),
        seguranca = new L.LayerGroup(),
        saude = new L.LayerGroup(),
        educacao = new L.LayerGroup(),
        layers = {
            type: "FeatureCollection",
            features: []
        };

    function setMap() {

        var osmAttr = '&copy; <a href="http://osm.org/copyright">OpenStreetMap</a> contributors | &copy; SIG Web Luziânia',
            mbAttr = '&copy; <a href="http://esri.com">Esri</a> contributors | &copy; SIG Web Luziânia',
            osmUrl = 'http://{s}.tile.osm.org/{z}/{x}/{y}.png',
            mbUrl = 'http://server.arcgisonline.com/ArcGIS/rest/services/World_Imagery/MapServer/tile/{z}/{y}/{x}';

        mapStreet = L.tileLayer(osmUrl, { attribution: osmAttr }),
        mapSatelite = L.tileLayer(mbUrl, { attribution: mbAttr });

        map = L.map('map', {
            center: [-16.190, -47.940], // Iniciação em Luziânia
            zoom: 12,
            layers: [mapStreet, lazer, seguranca, saude, educacao],
            retina: true
        });

        L.control.scale().addTo(map);
    }

    function setLegend() {

        var legend = L.control({ position: 'bottomright' });

        legend.onAdd = function (map) {

            var div = L.DomUtil.create('div', 'info legend'),
                layers = ["Educação", "Lazer", "Saúde", "Segurança"],
                labels = [],
                text = null;

            for (var i = 0; i < layers.length; i++) {

                text = layers[i];

                labels.push('<i style="background:' + getColor(layers[i]) + '"></i> ' + text);
            }

            div.innerHTML = labels.join('<br>');

            return div;
        };

        legend.addTo(map);
    }

    function getColor(d) {

        return d === "Educação" ? '#6baa09' :
               d === "Lazer" ? '#e5c100' :
               d === "Saúde" ? '#cb4b16' :
               d === "Segurança" ? '#003f87' :
               null;
    }

    function setLayers() {

        var groupedOverlays = {
            "Mapas": {
                "Rua": mapStreet,
                "Satélite": mapSatelite
            },
            "Camadas": {
                "Lazer": lazer,
                "Segurança": seguranca,
                "Saúde": saude,
                "Educação": educacao
            }
        };

        var layerControl = L.control.groupedLayers(null, groupedOverlays, { exclusiveGroups: ["Mapas"] });

        map.addControl(layerControl);
    }

    function setData(i, obj) {

        var coordinate = [obj.Longitude, obj.Latitude],
            propertie = obj,
            feature = {
                geometry: {
                    type: "Point",
                    coordinates: coordinate
                },
                type: "Feature",
                properties: propertie
            };

        layers.features.push(feature);
    }

    function setProperties() {

        var uriMap = ['/api/mapa/lazer', '/api/mapa/seguranca', '/api/mapa/saude', '/api/mapa/educacao'];
        var baseUrl = $("base").attr("href");
        var countMap = 0;

        $.each(uriMap, function (i) {
            $.getJSON(baseUrl + uriMap[i])
                .done(function (data) {
                    $.each(data, function (i, obj) {

                        setData(i, obj);
                    });

                    countMap++;

                    setPropertiesFeatures(layers);

                    if (countMap === uriMap.length) {
                        setSearch(searchLayer);
                    }
                })
             .error(function () {
                 alert('Erro ao carregar camada no mapa.');
             });
        });
    }

    function setPropertiesFeatures(layers) {

        searchLayer = L.geoJson(layers, {
            onEachFeature: setContentFeature,
            pointToLayer: function (feature) {
                return setMarker(feature);
            }
        });
    }

    function setContentFeature(feature, layer) {

        var popupContent = "";

        for (var item in feature.properties) {
            var propertiesId = item === "LazerId" || item === "SegurancaId" || item === "SaudeId" || item === "EducacaoId";

            if (!propertiesId) {
                item === "Nome" ? popupContent += ('<p style="font-size: 14px"><strong>' + feature.properties[item] + '</strong></p>' + '<hr>')
                    : popupContent += ('<strong>' + item + '</strong>' + ': ' + feature.properties[item] + '<br>');
            }
        }

        return layer.bindPopup(popupContent);
    }

    function setMarker(feature) {

        var icon = "";
        var color = "";
        var layer = null;

        if (feature.properties.hasOwnProperty("LazerId")) {
            icon = "smile-o";
            color = "#e5c100"; //Amarelo
            layer = lazer;
        } else if (feature.properties.hasOwnProperty("SegurancaId")) {
            icon = "cab";
            color = "#003f87"; //Azul
            layer = seguranca;
        } else if (feature.properties.hasOwnProperty("SaudeId")) {
            icon = "medkit";
            color = "#cb4b16"; //Vermelho
            layer = saude;
        }
        else { //EducacaoId
            icon = "pencil";
            color = "#6baa09"; //Verde
            layer = educacao;
        }

        return L.marker([feature.properties.Latitude, feature.properties.Longitude], { icon: L.VectorMarkers.icon({ icon: icon, prefix: 'fa', markerColor: color }) }).addTo(layer);
    }

    function setSearch(searchLayer) {

        var searchControl = new L.Control.Search(
        {
            layer: searchLayer,
            propertyName: 'Nome',
            text: 'Procurar Localidade',
            textCancel: 'Cancelar',
            textErr: 'Localização não encontrada',
            zoom: 17
        });

        map.addControl(searchControl);
    }

    $(function init() {
        setMap();
        setLegend();
        setLayers();
        setProperties();
    });
});