using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _16.Log_In_Form_with_Database
{
    public partial class Dashbord : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"] != null)
            {
                Response.Write("Welcome to My Site Mr/Mrs " + Session["User"].ToString());
            }
            else
            {
                Response.Redirect("Login.aspx");
            }
        }

        protected void LOGOUTButton1_Click(object sender, EventArgs e)
        {
            if (Session["user"] != null)
            {
                Session["user"] = null;
                Response.Redirect("Login.aspx");
            }
        }
    }
}