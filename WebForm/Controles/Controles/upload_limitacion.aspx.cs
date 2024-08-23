using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Controles.Controles
{
    public partial class upload_limitacion : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (hfShowError.Value == "true")
            {
                lblError.Text = "El archivo supera el tamaño máximo permitido de 10 MB.";
                panelError.Visible = true;
            }
        }

        protected void BTN_Click(object sender, EventArgs e)
        {

            string rootPath = Server.MapPath("~/upload");//ruta de la aplicación
            string uploadPath = Path.Combine(rootPath, "Uploads");

            string fileName = Path.GetFileName(fuFichero.FileName);
            string fullPath = Path.Combine(uploadPath, fileName);

            fuFichero.SaveAs(fullPath);
        }
    }
}