using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Configuration;

namespace _09196482GTY
{
    public class DbLayer
    {
        public DbLayer()
        {

        }

        public void saveUser(String name, String id, String pwd, String country)
        {
            String cs = ConfigurationManager.ConnectionStrings["dbMidSemesterTestConnectionString"].ConnectionString;
            SqlConnection sc = new SqlConnection(cs);
            sc.Open();

            String query = "insert into tblUsers values('" + name + "','" +
                id + "','" +
                pwd + "','" +
                country + "')";

            SqlCommand scm = new SqlCommand(query, sc);

            scm.ExecuteNonQuery();

            sc.Close();
            sc = null;
        }

        public Boolean checkLogin(String id, String pwd)
        {
            String cs = ConfigurationManager.ConnectionStrings["dbMidSemesterTestConnectionString"].ConnectionString;
            SqlConnection sc = new SqlConnection(cs);
            sc.Open();

            String query = "select count(*) from tblUsers where 1=1 and UserID = '" + id + "' and Password = '" + pwd + "'";

            SqlCommand scm = new SqlCommand(query, sc);
            int cnt = int.Parse(scm.ExecuteScalar().ToString());

            if (cnt <= 0)
                return false;

            return true;
        }
    }
}