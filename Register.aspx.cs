using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _09196482GTY
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            DbLayer db = new DbLayer();

            String name = tbRegName.Text;
            String id = tbRegEmail.Text;
            String pwd = tbRegPwd.Text;
            String country = tbDropCountry.Text;

            db.saveUser(name, id, pwd, country);

            Response.Cookies["user"].Value = name;
            Response.Cookies["user"].Expires = DateTime.Now.AddDays(3);
            Response.Redirect("Login.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx");
        }
    }
}