using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Controles.TiposFormularios
{
    public partial class Detalle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack == false)
            {
                actualizarListadoCredenciales();
            }
        }

        #region

        protected void lvCredenciales_ItemCreated(object sender, ListViewItemEventArgs e)
        {
        }

        protected void lvCredenciales_ItemDataBound(object sender, ListViewItemEventArgs e)
        {

            var dataItem = e.Item as ListViewDataItem;

            var imgHabilitado = dataItem?.FindControl("imgHabilitado") as Image;
            imgHabilitado.ImageUrl = "/img/false.png";

            var drView = dataItem?.DataItem as DataRowView;

            if (drView != null)
            {
                bool habilitado = Convert.ToBoolean(drView["habilitado"]);
                if (habilitado == true)
                {
                    imgHabilitado.ImageUrl = "/img/true.png";
                }
            }
        }

        protected void lbtnEliminarCredencial_Click(object sender, EventArgs e)
        {
            LinkButton btnEliminarCredencial = sender as LinkButton;
            ListViewDataItem item = btnEliminarCredencial.NamingContainer as ListViewDataItem;
            Label lbIdCredencial = item.FindControl("lbIdCredencial") as Label;
            if (lbIdCredencial != null)
            {
                string idString = lbIdCredencial.Text.Trim();
                hfConfirmar.Value = idString;
            }

            ScriptManager.RegisterStartupScript(this, GetType(), "mostrarModal", $"mostrarConfirmarEliminarModal();", true);
        }

        private void actualizarListadoCredenciales()
        {
            string pathDb = Server.MapPath("~/db/db_auth_jwt_bearer.db");
            /*
            BearerToken_ServicesManager oservice = new BearerToken_ServicesManager(pathDb);
            lvCredenciales.DataSource = oservice.credencialDAO.BuscarTodos().Tables[0];
            lvCredenciales.DataBind();
            */
            lvCredenciales.DataSource = new List<dynamic>
            {
                new {id=1, guid="usuario1", clave="123", descripcion="registro1", habilitado=1, scopes=""},
                new {id=2, guid="usuario2", clave="123", descripcion="registro2", habilitado=0, scopes=""}
            };
            lvCredenciales.DataBind();
        }

        #endregion

        protected void btnConfirmarEliminar_Click(object sender, EventArgs e)
        {
            int idCredencial = Convert.ToInt32(hfConfirmar.Value);

            /*
            string pathDb = Server.MapPath("~/db/db_auth_jwt_bearer.db");
            BearerToken_ServicesManager oservice = new BearerToken_ServicesManager(pathDb);
            oservice.credencialDAO.Eliminar(idCredencial);
            */
            actualizarListadoCredenciales();
        }
    }
}