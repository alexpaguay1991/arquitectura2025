/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/WebServices/WebService.java to edit this template
 */
package ec.edu.gr06.controlador;

import javax.jws.WebService;
import javax.jws.WebMethod;
import javax.jws.WebParam;

/**
 *
 * @author User
 */
@WebService(serviceName = "WSConUni")
public class WSConUni {

    /**
     * This is a sample web service operation
     */
    @WebMethod(operationName = "hello")
    public String hello(@WebParam(name = "name") String txt) {
        return "Hello " + txt + " !";
    }
    @WebMethod(operationName = "pulgadasACentimetros")
    public double pulgadasACentimetros(@WebParam(name = "pulgadas") String pulgadasStr) {
        try {
            double pulgadas = Double.parseDouble(pulgadasStr);
            return pulgadas * 2.54; // 1 pulgada = 2.54 centímetros
        } catch (NumberFormatException e) {
            return -1.0; // Retorna -1.0 en caso de error de conversión
        }
    }

}
