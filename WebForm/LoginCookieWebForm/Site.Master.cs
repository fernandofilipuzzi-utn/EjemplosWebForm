using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LoginCookieWebForm
{
    public partial class SiteMaster : MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            HttpCookie retrievedCookie = Request.Cookies["UserSettings"];
           
            if (retrievedCookie != null)
            {
                string username = retrievedCookie["Username"];
                string lastVisit = retrievedCookie["LastVisit"];
            }
            else
            {
                Response.Redirect("login.aspx");
            }
        }

        protected void hlkCerrar_Click(object sender, EventArgs e)
        {
            HttpCookie myCookie = Request.Cookies["UserSettings"];

            if (myCookie != null)
            {
                myCookie.Expires = DateTime.Now.AddDays(-1);
                Response.Cookies.Add(myCookie);
                Response.Redirect("login.aspx");
            }
        }
    }
}