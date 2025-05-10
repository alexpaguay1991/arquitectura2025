using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using ServiceReference1;

namespace _02_DotnetClienteMovil.Controlador
{
    public class ConvertidorController
    {
        private WSConUniSoapClient _client;
        public ConvertidorController()
        {
            _client = new WSConUniSoapClient(WSConUniSoapClient.EndpointConfiguration.WSConUniSoap);
        }
        public async Task<double> ConvertirCentimetrosAPulgadas(double centimetros)
        {
            try
            {
                return await _client.ConvertirCentimetrosAPulgadasAsync(centimetros);
            }
            catch (Exception ex)
            {
                // Maneja el error adecuadamente
                Console.WriteLine($"Error nuevo: {ex.Message}");
                Console.WriteLine($"Detalles del error: {ex.ToString()}"); // Agrega más detalles
                return 0; // O maneja el error según sea necesario
            }
        }
        public async Task<double> ConvertirPulgadasACentimetros(double pulgadas)
        {
            try
            {
                return await _client.ConvertirPulgadasACentimetrosAsync(pulgadas);
            }
            catch (Exception ex)
            {
                // Maneja el error adecuadamente
                Console.WriteLine($"Error: {ex.Message}");
                return 0; // O maneja el error según sea necesario
            }
        }

    }
}
