﻿//------------------------------------------------------------------------------
// <auto-generated>
//     Este código fue generado por una herramienta.
//     Versión de runtime:4.0.30319.42000
//
//     Los cambios en este archivo podrían causar un comportamiento incorrecto y se perderán si
//     se vuelve a generar el código.
// </auto-generated>
//------------------------------------------------------------------------------

// 
// Microsoft.VSDesigner generó automáticamente este código fuente, versión=4.0.30319.42000.
// 
#pragma warning disable 1591

namespace _02_ClienteConsola.localhost {
    using System.Diagnostics;
    using System;
    using System.Xml.Serialization;
    using System.ComponentModel;
    using System.Web.Services.Protocols;
    using System.Web.Services;
    
    
    /// <remarks/>
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.Web.Services", "4.8.9037.0")]
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.ComponentModel.DesignerCategoryAttribute("code")]
    [System.Web.Services.WebServiceBindingAttribute(Name="WSConUniSoap", Namespace="http://tempuri.org/")]
    public partial class WSConUni : System.Web.Services.Protocols.SoapHttpClientProtocol {
        
        private System.Threading.SendOrPostCallback ConvertirCentimetrosAPulgadasOperationCompleted;
        
        private System.Threading.SendOrPostCallback ConvertirPulgadasACentimetrosOperationCompleted;
        
        private bool useDefaultCredentialsSetExplicitly;
        
        /// <remarks/>
        public WSConUni() {
            this.Url = global::_02_ClienteConsola.Properties.Settings.Default._02_ClienteConsola_localhost_WSConUni;
            if ((this.IsLocalFileSystemWebService(this.Url) == true)) {
                this.UseDefaultCredentials = true;
                this.useDefaultCredentialsSetExplicitly = false;
            }
            else {
                this.useDefaultCredentialsSetExplicitly = true;
            }
        }
        
        public new string Url {
            get {
                return base.Url;
            }
            set {
                if ((((this.IsLocalFileSystemWebService(base.Url) == true) 
                            && (this.useDefaultCredentialsSetExplicitly == false)) 
                            && (this.IsLocalFileSystemWebService(value) == false))) {
                    base.UseDefaultCredentials = false;
                }
                base.Url = value;
            }
        }
        
        public new bool UseDefaultCredentials {
            get {
                return base.UseDefaultCredentials;
            }
            set {
                base.UseDefaultCredentials = value;
                this.useDefaultCredentialsSetExplicitly = true;
            }
        }
        
        /// <remarks/>
        public event ConvertirCentimetrosAPulgadasCompletedEventHandler ConvertirCentimetrosAPulgadasCompleted;
        
        /// <remarks/>
        public event ConvertirPulgadasACentimetrosCompletedEventHandler ConvertirPulgadasACentimetrosCompleted;
        
        /// <remarks/>
        [System.Web.Services.Protocols.SoapDocumentMethodAttribute("http://tempuri.org/ConvertirCentimetrosAPulgadas", RequestNamespace="http://tempuri.org/", ResponseNamespace="http://tempuri.org/", Use=System.Web.Services.Description.SoapBindingUse.Literal, ParameterStyle=System.Web.Services.Protocols.SoapParameterStyle.Wrapped)]
        public double ConvertirCentimetrosAPulgadas(double centimetros) {
            object[] results = this.Invoke("ConvertirCentimetrosAPulgadas", new object[] {
                        centimetros});
            return ((double)(results[0]));
        }
        
        /// <remarks/>
        public void ConvertirCentimetrosAPulgadasAsync(double centimetros) {
            this.ConvertirCentimetrosAPulgadasAsync(centimetros, null);
        }
        
        /// <remarks/>
        public void ConvertirCentimetrosAPulgadasAsync(double centimetros, object userState) {
            if ((this.ConvertirCentimetrosAPulgadasOperationCompleted == null)) {
                this.ConvertirCentimetrosAPulgadasOperationCompleted = new System.Threading.SendOrPostCallback(this.OnConvertirCentimetrosAPulgadasOperationCompleted);
            }
            this.InvokeAsync("ConvertirCentimetrosAPulgadas", new object[] {
                        centimetros}, this.ConvertirCentimetrosAPulgadasOperationCompleted, userState);
        }
        
        private void OnConvertirCentimetrosAPulgadasOperationCompleted(object arg) {
            if ((this.ConvertirCentimetrosAPulgadasCompleted != null)) {
                System.Web.Services.Protocols.InvokeCompletedEventArgs invokeArgs = ((System.Web.Services.Protocols.InvokeCompletedEventArgs)(arg));
                this.ConvertirCentimetrosAPulgadasCompleted(this, new ConvertirCentimetrosAPulgadasCompletedEventArgs(invokeArgs.Results, invokeArgs.Error, invokeArgs.Cancelled, invokeArgs.UserState));
            }
        }
        
        /// <remarks/>
        [System.Web.Services.Protocols.SoapDocumentMethodAttribute("http://tempuri.org/ConvertirPulgadasACentimetros", RequestNamespace="http://tempuri.org/", ResponseNamespace="http://tempuri.org/", Use=System.Web.Services.Description.SoapBindingUse.Literal, ParameterStyle=System.Web.Services.Protocols.SoapParameterStyle.Wrapped)]
        public double ConvertirPulgadasACentimetros(double pulgadas) {
            object[] results = this.Invoke("ConvertirPulgadasACentimetros", new object[] {
                        pulgadas});
            return ((double)(results[0]));
        }
        
        /// <remarks/>
        public void ConvertirPulgadasACentimetrosAsync(double pulgadas) {
            this.ConvertirPulgadasACentimetrosAsync(pulgadas, null);
        }
        
        /// <remarks/>
        public void ConvertirPulgadasACentimetrosAsync(double pulgadas, object userState) {
            if ((this.ConvertirPulgadasACentimetrosOperationCompleted == null)) {
                this.ConvertirPulgadasACentimetrosOperationCompleted = new System.Threading.SendOrPostCallback(this.OnConvertirPulgadasACentimetrosOperationCompleted);
            }
            this.InvokeAsync("ConvertirPulgadasACentimetros", new object[] {
                        pulgadas}, this.ConvertirPulgadasACentimetrosOperationCompleted, userState);
        }
        
        private void OnConvertirPulgadasACentimetrosOperationCompleted(object arg) {
            if ((this.ConvertirPulgadasACentimetrosCompleted != null)) {
                System.Web.Services.Protocols.InvokeCompletedEventArgs invokeArgs = ((System.Web.Services.Protocols.InvokeCompletedEventArgs)(arg));
                this.ConvertirPulgadasACentimetrosCompleted(this, new ConvertirPulgadasACentimetrosCompletedEventArgs(invokeArgs.Results, invokeArgs.Error, invokeArgs.Cancelled, invokeArgs.UserState));
            }
        }
        
        /// <remarks/>
        public new void CancelAsync(object userState) {
            base.CancelAsync(userState);
        }
        
        private bool IsLocalFileSystemWebService(string url) {
            if (((url == null) 
                        || (url == string.Empty))) {
                return false;
            }
            System.Uri wsUri = new System.Uri(url);
            if (((wsUri.Port >= 1024) 
                        && (string.Compare(wsUri.Host, "localHost", System.StringComparison.OrdinalIgnoreCase) == 0))) {
                return true;
            }
            return false;
        }
    }
    
    /// <remarks/>
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.Web.Services", "4.8.9037.0")]
    public delegate void ConvertirCentimetrosAPulgadasCompletedEventHandler(object sender, ConvertirCentimetrosAPulgadasCompletedEventArgs e);
    
    /// <remarks/>
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.Web.Services", "4.8.9037.0")]
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.ComponentModel.DesignerCategoryAttribute("code")]
    public partial class ConvertirCentimetrosAPulgadasCompletedEventArgs : System.ComponentModel.AsyncCompletedEventArgs {
        
        private object[] results;
        
        internal ConvertirCentimetrosAPulgadasCompletedEventArgs(object[] results, System.Exception exception, bool cancelled, object userState) : 
                base(exception, cancelled, userState) {
            this.results = results;
        }
        
        /// <remarks/>
        public double Result {
            get {
                this.RaiseExceptionIfNecessary();
                return ((double)(this.results[0]));
            }
        }
    }
    
    /// <remarks/>
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.Web.Services", "4.8.9037.0")]
    public delegate void ConvertirPulgadasACentimetrosCompletedEventHandler(object sender, ConvertirPulgadasACentimetrosCompletedEventArgs e);
    
    /// <remarks/>
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.Web.Services", "4.8.9037.0")]
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.ComponentModel.DesignerCategoryAttribute("code")]
    public partial class ConvertirPulgadasACentimetrosCompletedEventArgs : System.ComponentModel.AsyncCompletedEventArgs {
        
        private object[] results;
        
        internal ConvertirPulgadasACentimetrosCompletedEventArgs(object[] results, System.Exception exception, bool cancelled, object userState) : 
                base(exception, cancelled, userState) {
            this.results = results;
        }
        
        /// <remarks/>
        public double Result {
            get {
                this.RaiseExceptionIfNecessary();
                return ((double)(this.results[0]));
            }
        }
    }
}

#pragma warning restore 1591