using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebListView
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack == true) return;

            listView1.DataSource = GetDatos();
            listView1.DataBind();
        }

        protected void listView1_ItemEditing(object sender, ListViewEditEventArgs e)
        {
            listView1.EditIndex = e.NewEditIndex;
        }


        protected void listView1_ItemUpdating(object sender, ListViewUpdateEventArgs e)
        {
            int idx = e.ItemIndex;

            TextBox tbCampo1 = listView1.EditItem.FindControl("tbEditCampo1") as TextBox;
            TextBox tbCampo2 = listView1.EditItem.FindControl("tbEditCampo2") as TextBox;

            DataTable dt = Actualiza(idx, tbCampo1?.Text, tbCampo2?.Text).Tables[0];

            listView1.DataSource = dt;
            listView1.DataBind();

            listView1.EditIndex = -1;
        }

        protected void listView1_ItemInserted(object sender, ListViewInsertedEventArgs e)
        {
            var tbCampo1 = (sender as ListView)?.InsertItem?.FindControl("tbCampo1") as TextBox;
            var tbCampo2 = (sender as ListView)?.InsertItem?.FindControl("tbCampo2") as TextBox;

            if (tbCampo1 != null && tbCampo2 != null)
            {
                string campo1 = tbCampo1.Text;
                string campo2 = tbCampo2.Text;

                var dt = (sender as ListView)?.DataSource as DataTable;

                if (dt != null)
                {
                    var dr = dt.NewRow();

                    dr["Campo1"] = campo1;
                    dr["Campo2"] = campo2;
                }

            }

            listView1.EditIndex = -1;
        }

        protected void listView1_ItemDeleting(object sender, ListViewDeleteEventArgs e)
        {
            int idx = e.ItemIndex;

            DataTable dt = Delete(idx).Tables[0];

            listView1.DataSource = dt;
            listView1.DataBind();
            // var dt = (sender as ListView)?.dataDataSource as DataTable;

            //

            //if (dt != null)
            //{
            //    dt.Rows.RemoveAt(idx);
            //}
        }

        protected void listView1_ItemCanceling(object sender, ListViewCancelEventArgs e)
        {
            listView1.EditIndex = -1;
        }

        static DataSet ds;
        static DataTable dt;
        private DataSet GetDatos()
        {
            if (ds == null) ds = new DataSet();
            if (dt == null)
            {
                dt = new DataTable("Mi tabla");
                ds.Tables.Add(dt);
           

                dt.Columns.Add("Campo1", typeof(string));
                dt.Columns.Add("Campo2", typeof(string));

                for (int n = 0; n < 10; n++)
                {
                    var dr = dt.NewRow();
                    dr["Campo1"] = n.ToString();
                    dr["Campo2"] = "Campo1" + n.ToString();
                    dt.Rows.Add(dr);
                }
            };
            return ds;
        }

        private DataSet Delete(int idx)
        {
            DataSet ds = GetDatos();
            DataTable dt = ds.Tables[0];

            dt.Rows.RemoveAt(idx);

            return ds;
        }

        private DataSet Actualiza(int idx, string campo1, string campo2)
        {
            DataSet ds = GetDatos();
            DataTable dt = ds.Tables[0];

            dt.Rows[idx]["Campo1"] = campo1;
            dt.Rows[idx]["Campo2"] = campo2;

            return ds;
        }
    }
}