using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebDisenioASPX
{
    public partial class Formulario_Estandar : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack == false)
            {
                ddlLista.DataSource = getValores().Tables[0];
                ddlLista.DataBind();
            }
        }

        private DataSet getValores()
        {
            DataSet dsLista = new DataSet();
            DataTable dt = new DataTable();

            dt.Columns.Add("Id", typeof(int));
            dt.Columns.Add("Descripcion", typeof(string));
            dt.Columns.Add("Id_Tipo", typeof(int));
            dt.Columns.Add("Requiere_Validacion", typeof(bool));

            DataRow drRow = dt.NewRow(); drRow["Id"] = 1; drRow["Descripcion"] = "Buggy"; drRow["Id_Tipo"] = 1; drRow["Requiere_Validacion"] = true;
            dt.Rows.Add(drRow); ;

            drRow = dt.NewRow(); drRow["Id"] = 2; drRow["Descripcion"] = "Cuatriciclo"; drRow["Id_Tipo"] = 2; drRow["Requiere_Validacion"] = false;
            dt.Rows.Add(drRow); ;

            drRow = dt.NewRow(); drRow["Id"] = 3; drRow["Descripcion"] = "Cuatriciclo"; drRow["Id_Tipo"] = 2; drRow["Requiere_Validacion"] = true;
            dt.Rows.Add(drRow); ;

            dsLista.Tables.Add(dt);

            return dsLista;
        }

        protected void btnShowAlert_Click(object sender, EventArgs e)
        {
            warningAlert.Visible = true;
        }

        protected void ddlLista_SelectedIndexChanged(object sender, EventArgs e)
        {
            string selectedValue = ddlLista.SelectedValue;
            DataRow[] selectedRows = getValores().Tables[0].Select("Id = " + selectedValue);
            if (selectedRows.Length > 0)
            {
                bool requiereValidacion = (bool)selectedRows[0]["Requiere_Validacion"];

                if (requiereValidacion)
                {
                    tbUsername.Attributes["required"] = "true";
                }
                else
                {
                    tbUsername.Attributes["required"] = "false";
                }
            }
        }

        protected void ddlLista_DataBound(object sender, EventArgs e)
        {

        }

        protected void ddlLista_TextChanged(object sender, EventArgs e)
        {
            string selectedValue = ddlLista.SelectedValue;
            DataRow[] selectedRows = getValores().Tables[0].Select("Id = " + selectedValue);
            if (selectedRows.Length > 0)
            {
                bool requiereValidacion = (bool)selectedRows[0]["Requiere_Validacion"];

                if (requiereValidacion)
                {
                    tbUsername.Attributes["required"] = "true";
                }
                else
                {
                    tbUsername.Attributes["required"] = "false";
                }
            }
        }
    }
}