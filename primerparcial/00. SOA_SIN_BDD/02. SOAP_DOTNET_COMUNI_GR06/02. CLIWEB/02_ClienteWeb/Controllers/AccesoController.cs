using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using _02_ClienteWeb.Models;
namespace _02_ClienteWeb.Controllers
{
    public class AccesoController : Controller
    {
        // GET: Acceso
        public ActionResult Login()
        {
            return View();
        }
        [HttpPost]
        public ActionResult Login(Usuario oUsuario)
        {
            if(validarUsuario(oUsuario))
            {
                Session["usuario"] = oUsuario;
                return RedirectToAction("Conversion", "Home");
            }
            else
            {
                ViewData["Mensaje"] = "Usuario o contraseña incorrectas";
                return View();
            }
                
        }
        public bool validarUsuario(Usuario usuario)
        {
            if(usuario.Correo.Equals("MONSTER")&& usuario.Clave.Equals("MONSTER9"))
            {
                return true;
            }
            else
            {
                return false;
            }
        }

    }
}