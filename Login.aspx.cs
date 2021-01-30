using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _09196482GTY
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
         
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            DbLayer db = new DbLayer();
            String id = tbLoginId.Text;
            String pwd = tbLoginPwd.Text;

            if( !db.checkLogin(id, pwd) )
            {
                string script = "alert(\"Try Again!\");";
                ScriptManager.RegisterStartupScript(this, GetType(),
                                      "ServerControlScript", script, true);
            }
            else
            {
                Response.Cookies["user"].Value = id;
                Response.Cookies["user"].Expires = DateTime.Now.AddDays(3);
                Response.Redirect("Default.aspx");
            }
        }

        protected void btnLoginRegister_Click(object sender, EventArgs e)
        {
            Response.Redirect("Register.aspx");
        }
    }
}