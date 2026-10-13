using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _15.Query_String
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SENDButton1_Click(object sender, EventArgs e)
        {
            //Response.Redirect("WebForm2.aspx?id=" + IDTextBox1.Text + "&name=" + NAMETextBox2.Text + "&age=" + AGETextBox3.Text);

            Response.Redirect("WebForm2.aspx?id=" + Server.UrlEncode(IDTextBox1.Text) + "&name=" + Server.UrlEncode(NAMETextBox2.Text) + "&age=" + Server.UrlEncode(AGETextBox3.Text));

        }
    }
}