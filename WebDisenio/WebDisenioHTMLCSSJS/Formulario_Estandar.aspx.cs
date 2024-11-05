using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebDisenioHTMLCSSJS
{
    public partial class Formulario_Estandar : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack == false)
            {
                
            }
        }

        protected void btnShowAlert_Click(object sender, EventArgs e)
        {
            //verificación
            bool operacionExitosa = true;

            if (operacionExitosa)
            {
                // muestra 
                string script = @"<script>
                                    $(document).ready(function()
                                    {
                                        var alertElement = document.getElementById('warningAlert');
                                        alertElement.classList.remove('fade');
                                        alertElement.classList.add('show');
                                        //$('#warningAlert').addClass('show');
                                    });
                                </script>";

                // registra
                ScriptManager.RegisterStartupScript(this, this.GetType(), "mostrarAlerta", script, false);
            }
        }
    }
}