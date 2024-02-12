using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Controles
{
    public partial class formulario : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                
              //  hyperLinkDownload.Enabled = false;
                //string filePath = "~/Uploads/miarchivo.pdf";
                //hyperLinkDownload.NavigateUrl = filePath;
            }
        }


        protected void btnEnviar_Click(object sender, EventArgs e)
        {
            if (fuFichero.HasFile)
            {
                try
                {
                    string filename = Path.GetFileName(fuFichero.FileName);
                    string path = Server.MapPath("~/Uploads/") + filename;
                    fuFichero.SaveAs(path);

                    string valor = "algún valor";
                    string serverPath = Server.MapPath("~/");
                    string contenido = $"{valor}";
                    File.AppendAllText(Path.Combine(serverPath+"log.txt"), contenido);
                }
                catch (Exception ex)
                {
                    // Maneja las excepciones que puedan ocurrir durante la carga.
                }
            }
        }

        protected void fileUpload_ServerClick(object sender, EventArgs e)
        {
            if (fuFichero.HasFile)
            {
        
              //  hyperLinkDownload.Enabled = true;
            }
            else
            {
                // No se ha seleccionado ningún archivo, muestra un mensaje de error o realiza otras acciones.
            }
        }

    }
}