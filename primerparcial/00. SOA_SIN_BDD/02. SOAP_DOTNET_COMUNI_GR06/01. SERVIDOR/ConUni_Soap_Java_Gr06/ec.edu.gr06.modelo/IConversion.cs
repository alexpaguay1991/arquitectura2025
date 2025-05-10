using System;
using System.Collections.Generic;
using System.Linq;
using System.ServiceModel;
using System.Text;
using System.Threading.Tasks;

namespace ConUni_Soap_Java_Gr06.ec.edu.gr06.modelo
{
    [ServiceContract]

    internal interface IConversion
    {
        [OperationContract]
        double centimetrosAPulgadas(double centimetros);

        [OperationContract]
        double pulgadasACentimetros(double pulgadas);


    }
}
