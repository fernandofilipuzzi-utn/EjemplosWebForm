using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Script.Services;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace IntegracionJavascript
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnEjecutarJavaScript_Click(object sender, EventArgs e)
        {
            ClientScript.RegisterStartupScript(this.GetType(), "miFuncion", "miFuncionJS();", true);
        }

        protected void btnCambiarDesdecsharp_Click(object sender, EventArgs e)
        {
            //el control html debe llevar runat="server"
            //HtmlGenericControl lbCambiarDesdecshar = this.panel.FindControl("lbCambiarDesdecsharp") as HtmlGenericControl;
            HtmlGenericControl lbCambiarDesdecshar = this.Master.FindControl("MainContent").FindControl("lbCambiarDesdecsharp") as HtmlGenericControl;
            //
            if (lbCambiarDesdecshar != null)
            {
                lbCambiarDesdecshar.InnerHtml = DateTime.Now.ToString("dd/MM/yyyy HH:mm:ss");
            }
        }
    }
}
