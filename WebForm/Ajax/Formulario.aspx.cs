using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace Ajax
{
    public partial class Formulario : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnPrueba_Click(object sender, EventArgs e)
        {
            HtmlGenericControl alerta = this.panel.FindControl("alerta") as HtmlGenericControl;
            //
            if (alerta != null)
            {
                alerta.InnerHtml = tbNombre.Text;
                alerta.Style["visibility"] = "visible";
            }

            ((SiteMaster)this.Master).ShowMessage(tbNombre.Text, "Mensaje");
        }

        protected void btnPrueba2_Click(object sender, EventArgs e)
        {
            HtmlGenericControl alerta2 = this.panel.FindControl("alerta2") as HtmlGenericControl;
            //
            if (alerta2 != null)
            {
                alerta2.InnerHtml = tbNombre.Text;
            }
        }

        protected void rbOp2_CheckedChanged(object sender, EventArgs e)
        {
            btnPrueba.Visible = rbOp1.Checked == true;
        }
    }
}