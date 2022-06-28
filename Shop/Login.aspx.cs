using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Shop
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void login_Click(object sender, EventArgs e)
        {
            if ("999".Equals(id.Text) && "123456".Equals(password.Text))
            {
                Response.Redirect("Manage.aspx");
            }
            else
            {

                ValiDate(sender, e);
            }
        }
        protected void ValiDate(object sender, EventArgs e)
        {
            string connstr = ConfigurationManager.ConnectionStrings["UserDB"].ConnectionString;
            using (SqlConnection conn = new SqlConnection(connstr))
            {
                SqlCommand cmd = conn.CreateCommand();
                cmd.CommandText = "select * from Users;";
                conn.Open();
                SqlDataReader dr = cmd.ExecuteReader();
                int tag = 0;
                while (dr.Read())
                {
                    if (dr["ID"].Equals(id.Text) && dr["Password"].Equals(password.Text))
                    {
                        Response.Redirect("Home/Index");
                        tag = 1;
                        break;
                    }
                }
                if (tag == 0)
                {
                    message.Text = "账号或密码错误！";
                }
              
            }
        }
    }
}
