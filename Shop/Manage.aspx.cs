using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Shop
{
    public partial class Manage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void shuju_Click(object sender, EventArgs e)
        {
            Response.Redirect("Books/index");
        }

        protected void users_Click(object sender, EventArgs e)
        {
            Response.Redirect("Users/index");
        }
    }
}