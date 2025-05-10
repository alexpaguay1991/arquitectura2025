using _02_ClienteWeb.Models;
using _02_ClienteWeb.Permisos;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace _02_ClienteWeb.Controllers
{
    [ValidarSesion]
    public class HomeController : Controller
    {
        private readonly Convertidor.WSConUni cliente = new Convertidor.WSConUni();
        [HttpPost]
        public JsonResult ConvertirCentimetrosAPulgadas(double centimetros)
        {
            double pulgadas = cliente.ConvertirCentimetrosAPulgadas(centimetros);
            return Json(pulgadas);
        }

        [HttpPost]
        public JsonResult ConvertirPulgadasACentimetros(double pulgadas)
        {
            double centimetros = cliente.ConvertirPulgadasACentimetros(pulgadas);
            return Json(centimetros);
        }


        public ActionResult Index()
        {
            return View();
        }

        public ActionResult About()
        {
            ViewBag.Message = "Your application description page.";

            return View();
        }

        public ActionResult Contact()
        {
            ViewBag.Message = "Your contact page.";

            return View();
        }
        public ActionResult Conversion()
        {
            ViewBag.Message = "Conversión de Unidades.";

            return View();
        }
        public ActionResult Cerrarsesion()
        {
            Session["usuario"] = null;
            return RedirectToAction("Login", "Acceso");
        }
    }
}