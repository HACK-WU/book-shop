using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Shop.Views.Books
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string connstr = ConfigurationManager.ConnectionStrings["BookDB"].ConnectionString;
            using(SqlConnection conn = new SqlConnection(connstr))
            {
                SqlCommand cmd = conn.CreateCommand();
                cmd.CommandText = "select * from Books;";
                cmd.Parameters.Add("@kind", System.Data.SqlDbType.VarChar);
                cmd.Parameters["@kind"].Value = "文学";
                conn.Open();
                SqlDataReader dr = cmd.ExecuteReader();
                StringBuilder str = new StringBuilder(" ");
                StringBuilder row =new StringBuilder( "<div class='row'>");
               str.Append("<div class='row'>");
                int i = 0;
                while (dr.Read())
                {
                    i++;                   
                    str.Append("<div class='col-md-4'>");
                    str.Append("<a href = 'Detail.aspx?id=" + dr["ID"] + "'>");
                    str.Append("<h2>" + dr["name"] + "</h2>");
                    str.Append(" <p><img alt='图片显示失败' src ='Image/" + dr["Photo"] + "' width='191'  height='201'/></p>");
                    str.Append("<h2 style='color:green;'>" + dr["Price"] + "元</h2>");
                    str.Append("</a>");
                    str.Append("</div>");
                    if (i % 3 == 0)
                    {
                        str.Append("</div>");
                        str.Append("<div class='row'>");
                    }
                }
                str.Append("</div>");
                dr.Close();
                mess.Text = str.ToString();
            }
        }

        protected void wenxue_Click(object sender, EventArgs e)
        {
            mess.Text = "";
            string connstr = ConfigurationManager.ConnectionStrings["BookDB"].ConnectionString;
            using (SqlConnection conn = new SqlConnection(connstr))
            {
                SqlCommand cmd = conn.CreateCommand();
                cmd.CommandText = "select * from Books where Kind='文学';";                
                conn.Open();
                SqlDataReader dr = cmd.ExecuteReader();
                StringBuilder str = new StringBuilder(" ");
                StringBuilder row = new StringBuilder("<div class='row'>");
                str.Append("<div class='row'>");
                int i = 0;
                while (dr.Read())
                {
                    i++;
                    str.Append("<div class='col-md-4'>");
                    str.Append("<a href = 'Detail.aspx?id=" + dr["ID"] + "'>");
                    str.Append("<h2>" + dr["name"] + "</h2>");
                    str.Append(" <p><img alt='图片显示失败' src ='Image/" + dr["Photo"] + "' width='191'  height='201'/></p>");
                    str.Append("<h2 style='color:green;'>" + dr["Price"] + "元</h2>");
                    str.Append("</a>");
                    str.Append("</div>");
                    if (i % 3 == 0)
                    {
                        str.Append("</div>");
                        str.Append("<div class='row'>");
                    }
                }
                str.Append("</div>");
                dr.Close();
                mess.Text = str.ToString();
            }

        }

        protected void shenghuo_Click(object sender, EventArgs e)
        {
            mess.Text = "";
            string connstr = ConfigurationManager.ConnectionStrings["BookDB"].ConnectionString;
            using (SqlConnection conn = new SqlConnection(connstr))
            {
                SqlCommand cmd = conn.CreateCommand();
                cmd.CommandText = "select * from Books where Kind='生活';";               
                conn.Open();
                SqlDataReader dr = cmd.ExecuteReader();
                StringBuilder str = new StringBuilder(" ");
                StringBuilder row = new StringBuilder("<div class='row'>");
                str.Append("<div class='row'>");
                int i = 0;
                while (dr.Read())
                {
                    i++;
                    str.Append("<div class='col-md-4'>");
                    str.Append("<a href = 'Detail.aspx?id=" + dr["ID"] + "'>");
                    str.Append("<h2>" + dr["name"] + "</h2>");
                    str.Append(" <p><img alt='图片显示失败' src ='Image/" + dr["Photo"] + "' width='191'  height='201'/></p>");
                    str.Append("<h2 style='color:green;'>" + dr["Price"] + "元</h2>");
                    str.Append("</a>");
                    str.Append("</div>");
                    if (i % 3 == 0)
                    {
                        str.Append("</div>");
                        str.Append("<div class='row'>");
                    }
                }
                str.Append("</div>");
                dr.Close();
                mess.Text = str.ToString();
            }
        }

        protected void 计算机_Click(object sender, EventArgs e)
        {
            mess.Text = "";
            string connstr = ConfigurationManager.ConnectionStrings["BookDB"].ConnectionString;
            using (SqlConnection conn = new SqlConnection(connstr))
            {
                SqlCommand cmd = conn.CreateCommand();
                cmd.CommandText = "select * from Books where Kind='计算机';";               
                conn.Open();
                SqlDataReader dr = cmd.ExecuteReader();
                StringBuilder str = new StringBuilder(" ");
                StringBuilder row = new StringBuilder("<div class='row'>");
                str.Append("<div class='row'>");
                int i = 0;
                while (dr.Read())
                {
                    i++;
                    str.Append("<div class='col-md-4'>");
                    str.Append("<a href = 'Detail.aspx?id=" + dr["ID"] + "'>");
                    str.Append("<h2>" + dr["name"] + "</h2>");
                    str.Append(" <p><img alt='图片显示失败' src ='Image/" + dr["Photo"] + "' width='191'  height='201'/></p>");
                    str.Append("<h2 style='color:green;'>" + dr["Price"] + "元</h2>");
                    str.Append("</a>");
                    str.Append("</div>");
                    if (i % 3 == 0)
                    {
                        str.Append("</div>");
                        str.Append("<div class='row'>");
                    }
                }
                str.Append("</div>");
                dr.Close();
                mess.Text = str.ToString();
            }
        }

        protected void jingying_Click(object sender, EventArgs e)
        {
            string connstr = ConfigurationManager.ConnectionStrings["BookDB"].ConnectionString;
            using (SqlConnection conn = new SqlConnection(connstr))
            {
                mess.Text = "";
                SqlCommand cmd = conn.CreateCommand();
                cmd.CommandText = "select * from Books where Kind='经营';";              
                conn.Open();
                SqlDataReader dr = cmd.ExecuteReader();
                StringBuilder str = new StringBuilder(" ");
                StringBuilder row = new StringBuilder("<div class='row'>");
                str.Append("<div class='row'>");
                int i = 0;
                while (dr.Read())
                {
                    i++;
                    str.Append("<div class='col-md-4'>");
                    str.Append("<a href = 'Detail.aspx?id=" + dr["ID"] + "'>");
                    str.Append("<h2>" + dr["name"] + "</h2>");
                    str.Append(" <p><img alt='图片显示失败' src ='Image/" + dr["Photo"] + "' width='191'  height='201'/></p>");
                    str.Append("<h2 style='color:green;'>" + dr["Price"] + "元</h2>");
                    str.Append("</a>");
                    str.Append("</div>");
                    if (i % 3 == 0)
                    {
                        str.Append("</div>");
                        str.Append("<div class='row'>");
                    }
                }
                str.Append("</div>");
                dr.Close();
                mess.Text = str.ToString();
            }
        }
    }
}