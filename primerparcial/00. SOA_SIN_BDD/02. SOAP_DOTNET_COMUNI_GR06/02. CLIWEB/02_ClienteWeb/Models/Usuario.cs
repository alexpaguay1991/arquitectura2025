﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;


namespace _02_ClienteWeb.Models
{
    public class Usuario
    {
        public int Id { get; set; }
        public string Correo { get; set; }
        public string Clave { get; set; }
    }
}