using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Shop
{
    public partial class Detail : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            string connstr = ConfigurationManager.ConnectionStrings["BookDB"].ConnectionString;
            using (SqlConnection conn = new SqlConnection(connstr))
            {
                string id = Request.QueryString["id"];
                SqlCommand cmd = conn.CreateCommand();
                cmd.Parameters.Add("@id", System.Data.SqlDbType.VarChar);
                cmd.Parameters["@id"].Value = id;
                cmd.CommandText = "select * from Books where ID=@id";
                conn.Open();
                SqlDataReader dr = cmd.ExecuteReader();
                StringBuilder str = new StringBuilder(" ");
              
                dr.Read();                
                str.Append(" <p><img alt='图片显示失败' src ='Image/" + dr["Photo"] + "' width='191'  height='201'/></p>");                   
                
                StringBuilder Name = new StringBuilder("" + dr["Name"]);
               
                photo.Text = str.ToString();
                name.Text = dr["Name"].ToString();
                price.Text = dr["Price"].ToString();
                kind.Text = dr["Kind"].ToString();
                dr.Close();
            }

        }

        protected void return_Click(object sender, EventArgs e)
        {
            Response.Redirect("WebForm1.aspx");
        }
    }
}