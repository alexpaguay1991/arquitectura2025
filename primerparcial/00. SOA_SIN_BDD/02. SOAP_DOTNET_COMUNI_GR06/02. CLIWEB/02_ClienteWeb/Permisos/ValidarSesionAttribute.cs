﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace _02_ClienteWeb.Permisos
{
    public class ValidarSesionAttribute:ActionFilterAttribute
    {
        public override void OnActionExecuted(ActionExecutedContext filterContext)
        {
            if(HttpContext.Current.Session["usuario"] == null)
            {
                filterContext.Result = new RedirectResult("~/Acceso/Login");
            }
            base.OnActionExecuted(filterContext);
        }
    }
}