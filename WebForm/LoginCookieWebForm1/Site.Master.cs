using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LoginCookieWebForm
{
    public partial class SiteMaster : MasterPage
    {
        protected void Page_Init(object sender, EventArgs e)
        {
            if (HttpContext.Current.Request.Cookies["UsuarioSettings"] == null)
            {
                Response.Redirect("login.aspx");
            }
        }
        
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void hlkCerrar_Click(object sender, EventArgs e)
        {
            HttpCookie cookie = HttpContext.Current.Request.Cookies["UsuarioSettings"];
            if (cookie != null)
            {
                cookie.Expires = DateTime.Now.AddYears(-1);
                HttpContext.Current.Response.Cookies.Add(cookie); 

                Response.Redirect("login.aspx");
            }
        }
    }
}