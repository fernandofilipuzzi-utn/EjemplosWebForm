using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Controles
{
    public partial class listView_table : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack == false)
            {
                lvwListado.Items.Clear();
                lvwListado.DataSource = new ArrayList { new { Dni=43432243, Nombre = "Camila"}};
                lvwListado.DataBind();
            }
        }
    }
}