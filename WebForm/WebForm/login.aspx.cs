using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LoginCookieWebForm
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            HttpCookie retrievedCookie = Request.Cookies["UserSettings"];
            if (retrievedCookie != null)
            {
                string username = retrievedCookie["Username"];
                string lastVisit = retrievedCookie["LastVisit"];

                Response.Redirect("Default");
            }
        }

        protected void btnAceptar_Click(object sender, EventArgs e)
        {
            string nombre = tbUsuario.Text;
            string clave = tbClave.Text;
            if (nombre == "admin" && clave == "admin")
            {

                #region cookie
                HttpCookie myCookie = new HttpCookie("UserSettings");
                myCookie["Username"] = nombre;
                myCookie["LastVisit"] = DateTime.Now.ToString();
                myCookie.Expires = DateTime.Now.AddMonths(1);
                Response.Cookies.Add(myCookie);
                #endregion

                Response.Redirect("Default");
            }
            else
            {
                lbError.Text = "error";
            }
        }
    }
}