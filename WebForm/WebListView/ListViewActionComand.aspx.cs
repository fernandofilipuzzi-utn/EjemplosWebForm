using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebListView
{
    public partial class ListViewActionComand : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack == true) return;


            var dt = new DataTable("Ejemplos");
            dt.Columns.Add("Id", typeof(int));
            dt.Columns.Add("Fecha", typeof(DateTime));

            var dr = dt.NewRow();
            dr["Id"] = 1;
            dr["Fecha"] = DateTime.Today;
            dt.Rows.Add(dr);

            dr = dt.NewRow();
            dr["Id"] = 2;
            dr["Fecha"] = DateTime.Today;
            dt.Rows.Add(dr);

            lw.DataSource = dt;
            lw.DataBind();
        }

        protected void lw_ItemCommand(object sender, ListViewCommandEventArgs e)
        {
            if (e.CommandName == "ActionCommand")
            {

                string id = e.CommandArgument.ToString();

                Label lbFecha = (Label)e.Item.FindControl("lbFecha");

                string fecha= lbFecha.Text;    

                Response.Redirect($"~?Id={id}&Fecha={fecha}");
            }
        }
    }
}