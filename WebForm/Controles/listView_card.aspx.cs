using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Collections;

namespace Controles
{
    public partial class listView_card : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack == false)
            { 
                lvwListado.Items.Clear();
                lvwListado.DataSource = new ArrayList { new { Descripcion = "linea 1"},
                                                        new { Descripcion = "linea 2"},
                                                        new { Descripcion = "linea 3"} };
                lvwListado.DataBind();
            }
        }
    }
}