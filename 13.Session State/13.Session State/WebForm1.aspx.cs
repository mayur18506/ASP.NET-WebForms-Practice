using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _13.Session_State
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void submitButton1_Click(object sender, EventArgs e)
        {
            //Session.Add("user", userTextBox1.Text);
            Application["user"] = userTextBox1.Text;
            Response.Redirect("WebForm2.aspx");
        }
    }
}