using System.Web.Optimization;

namespace SIG_Luziania_Web
{
    public class BundleConfig
    {
        public static void RegisterBundles(BundleCollection bundles)
        {
            #region Scripts

            bundles.Add(new ScriptBundle("~/bundles/jquery").Include(
                        "~/Scripts/jquery-{version}.js"));

            bundles.Add(new ScriptBundle("~/bundles/jqueryval").Include(
                        "~/Scripts/jquery.validate*"));

            bundles.Add(new ScriptBundle("~/bundles/modernizr").Include(
                        "~/Scripts/modernizr-*"));

            bundles.Add(new ScriptBundle("~/bundles/bootstrap").Include(
                        "~/Scripts/bootstrap.min.js",
                        "~/Scripts/respond.min.js"));

            bundles.Add(new ScriptBundle("~/bundles/leaflet").Include(
                        "~/Scripts/Leaflet/leaflet.js",
                        "~/Scripts/Leaflet/leaflet.vector-markers.min.js",
                        "~/Scripts/Leaflet/leaflet.groupedlayercontrol.js",
                        "~/Scripts/Leaflet/leaflet-search.min.js",
                        "~/Scripts/Leaflet/leaflet-mapa.js"));

            bundles.Add(new ScriptBundle("~/bundles/highcharts").Include(
                        "~/Scripts/Highcharts/highcharts.js",
                        "~/Scripts/Highcharts/exporting.js"));
            #endregion

            #region Contents

            bundles.Add(new ScriptBundle("~/bundles/modal").Include(
                        "~/Scripts/Contents/modal.js"));

            bundles.Add(new ScriptBundle("~/bundles/geolocation").Include(
                        "~/Scripts/Contents/geolocation.js"));

            #endregion

            #region Gráficos

            bundles.Add(new ScriptBundle("~/bundles/highcharts-enem").Include(
                        "~/Scripts/Highcharts/highcharts-grafico-enem.js"));

            bundles.Add(new ScriptBundle("~/bundles/highcharts-ideb").Include(
                        "~/Scripts/Highcharts/highcharts-grafico-ideb.js"));

            #endregion

            #region CSS

            bundles.Add(new StyleBundle("~/Content/css").Include(
                        "~/Content/bootstrap.min.css",
                        "~/Content/site.css"));

            bundles.Add(new StyleBundle("~/Content/leaflet").Include(
                        "~/Content/leaflet.css",
                        "~/Content/font-awesome.min.css",
                        "~/Content/leaflet.vector-markers.css",
                        "~/Content/leaflet.groupedlayercontrol.css",
                        "~/Content/leaflet-search.min.css"));
            #endregion

            BundleTable.EnableOptimizations = false;
        }
    }
}