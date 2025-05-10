using Microsoft.Extensions.Logging;
using System.Net.Http;

namespace _02_DotnetClienteMovil
{
    public static class MauiProgram
    {
        public static MauiApp CreateMauiApp()
        {
            var builder = MauiApp.CreateBuilder();
            builder
                .UseMauiApp<App>()
                .ConfigureFonts(fonts =>
                {
                    fonts.AddFont("OpenSans-Regular.ttf", "OpenSansRegular");
                    fonts.AddFont("OpenSans-Semibold.ttf", "OpenSansSemibold");
                });

#if DEBUG
            builder.Logging.AddDebug();
#endif

            // Configuración de HttpClient con manejo de certificados
            builder.Services.AddHttpClient("MyHttpClient", client =>
            {
                client.BaseAddress = new Uri("https://192.168.100.5:44312/WSConUni.asmx/"); // Cambia esta URL
            })
            .ConfigurePrimaryHttpMessageHandler(() => new HttpClientHandler
            {
                ServerCertificateCustomValidationCallback = (message, cert, chain, errors) =>
                {
                    return true; // Permite todos los certificados (solo para desarrollo)
                }
            });

            return builder.Build();
        }
    }
}
