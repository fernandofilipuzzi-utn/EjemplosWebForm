using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebDisenioASPX
{
    public partial class Listado_Div : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack == false)
            {
                lv.DataSource = BuscarPor().Tables[0];
                lv.DataBind();
            }
        }

        protected void lv_ItemDataBound(object sender, ListViewItemEventArgs e)
        {
            if (e.Item.ItemType == ListViewItemType.DataItem)
            {

                Label lbColumna = e.Item.FindControl("lbColumna2") as Label;

                string columna2 = DataBinder.Eval(e.Item.DataItem, "Columna2") as string;

                lbColumna.Text = columna2;
            }
        }


        public DataSet BuscarPor()
        {
            DataSet ds = new DataSet();
            DataTable dt = new DataTable("Mi Tabla");
            ds.Tables.Add(dt);

            #region cabecera
            dt.Columns.Add("Columna1", typeof(string));
            dt.Columns.Add("Columna2", typeof(string));
            dt.Columns.Add("Columna3", typeof(string));
            #endregion

            #region fila 1
            DataRow dr = dt.NewRow();
            dr["Columna1"] = "valor1";
            dr["Columna2"] = "valor2";
            dr["Columna3"] = "valor3";
            dt.Rows.Add(dr);
            #endregion

            #region fila 2
            dr = dt.NewRow();
            dr["Columna1"] = "valor4";
            dr["Columna2"] = "valor5";
            dr["Columna3"] = "valor6";
            dt.Rows.Add(dr);
            #endregion 

            return ds;
        }
    }
}