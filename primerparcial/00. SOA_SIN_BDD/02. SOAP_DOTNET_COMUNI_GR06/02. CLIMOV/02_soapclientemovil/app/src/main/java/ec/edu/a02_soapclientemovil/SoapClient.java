package ec.edu.a02_soapclientemovil;

import org.ksoap2.SoapEnvelope;
import org.ksoap2.serialization.MarshalFloat;
import org.ksoap2.serialization.SoapObject;
import org.ksoap2.serialization.SoapSerializationEnvelope;
import org.ksoap2.transport.HttpTransportSE;

public class SoapClient {

    private static final String NAMESPACE = "http://tempuri.org/";
    private static final String URL = "https://localhost:44312/WSConUni.asmx";
    private static final String METHOD_CONVERTIR_CM_A_PULGADAS = "ConvertirCentimetrosAPulgadas";
    private static final String METHOD_CONVERTIR_PULGADAS_A_CM = "ConvertirPulgadasACentimetros";

    public float convertirCentimetrosAPulgadas(float centimetros) {
        try {
            SoapObject request = new SoapObject(NAMESPACE, METHOD_CONVERTIR_CM_A_PULGADAS);
            // Agregar el parámetro como String
            request.addProperty("centimetros", String.valueOf(centimetros));

            // Configurar el envelope
            SoapSerializationEnvelope envelope = new SoapSerializationEnvelope(SoapEnvelope.VER11);
            envelope.dotNet = true;
            envelope.setOutputSoapObject(request);

            // Registrar el marshaller para float
            new MarshalFloat().register(envelope);

            HttpTransportSE httpTransport = new HttpTransportSE(URL);
            httpTransport.call(NAMESPACE + METHOD_CONVERTIR_CM_A_PULGADAS, envelope);

            SoapObject response = (SoapObject) envelope.getResponse();
            return Float.parseFloat(response.getProperty(0).toString());

        } catch (Exception e) {
            e.printStackTrace();
            return -1; // Error
        }
    }

    public float convertirPulgadasACentimetros(float pulgadas) {
        try {
            SoapObject request = new SoapObject(NAMESPACE, METHOD_CONVERTIR_PULGADAS_A_CM);
            request.addProperty("pulgadas", pulgadas);

            SoapSerializationEnvelope envelope = new SoapSerializationEnvelope(SoapEnvelope.VER11);
            envelope.dotNet = true;
            envelope.setOutputSoapObject(request);

            HttpTransportSE httpTransport = new HttpTransportSE(URL);
            httpTransport.call(NAMESPACE + METHOD_CONVERTIR_PULGADAS_A_CM, envelope);

            SoapObject response = (SoapObject) envelope.getResponse();
            return Float.parseFloat(response.getProperty(0).toString());

        } catch (Exception e) {
            e.printStackTrace();
            System.out.println("Error detallado: " + e.getMessage());
            return -1; // Error
        }
    }
}

