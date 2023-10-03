using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LoginCookie1
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Init(object sender, EventArgs e)
        {
            HttpCookie cookie = Request.Cookies["UsuarioSettings"];
            
            if (cookie != null)
            {
                string usuario = cookie["Usuario"];
                string expiracion = cookie["Expiracion"];
                if (string.IsNullOrEmpty(expiracion) == false)
                {
                    DateTime expire = DateTime.Parse(expiracion);
                    if(DateTime.Now<expire)
                        Response.Redirect("Default");
                }
            }
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void btnAceptar_Click(object sender, EventArgs e)
        {
            string usuario = tbUsuario.Text;
            string clave = tbClave.Text;
            
            if (usuario == "admin" && clave == "admin")
            {
                #region cookie
                HttpCookie cookie = new HttpCookie("UsuarioSettings");

                cookie["Usuario"] = usuario;
                cookie["Expiracion"] = DateTime.Now.AddYears(1).ToString();

                Response.Cookies.Clear();
                Response.Cookies.Add(cookie);
                #endregion

                Response.Redirect("Default", false);
                Context.ApplicationInstance.CompleteRequest();
            }
            else
            {
                lbError.Text = "error";
            }
        }
    }
}