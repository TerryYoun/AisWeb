using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _09196482GTY
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                lbUserName.Text = "Welcome " + Request.Cookies["user"].Value;
            }
            catch
            {
                Response.Redirect("Login.aspx");
            }
        }

        protected void tbLogout_Click(object sender, EventArgs e)
        {
            HttpCookie hc = new HttpCookie("user");
            hc.Expires = DateTime.Now.AddDays(-3);
            Response.Cookies.Add(hc);
            Response.Redirect("Default.aspx");
        }
    }
}