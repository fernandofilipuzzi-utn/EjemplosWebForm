using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace VentanaModal
{
    public partial class Formulario : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLanzarModal_Click(object sender, EventArgs e)
        {
            ((SiteMaster)this.Master).ShowMessage(tbNombre.Text, "Mensaje");
        }

        protected void btnVisualizarAlerta_Click(object sender, EventArgs e)
        {
            HtmlGenericControl alerta = this.panel.FindControl("alerta") as HtmlGenericControl;
            //
            if (alerta != null)
            {
                alerta.InnerHtml = tbNombre.Text;
                alerta.Style["visibility"] = "visible";
            }
        }

        protected void rbOp2_CheckedChanged(object sender, EventArgs e)
        {
            btnLanzarModal.Visible = rbOp1.Checked == true;
        }
    }
}