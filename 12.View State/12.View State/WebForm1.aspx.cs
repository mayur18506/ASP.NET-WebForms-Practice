using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _12.View_State 
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        string a, b;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void RESTOREButton2_Click(object sender, EventArgs e)
        {
            if (ViewState["user"] !=null)
            {
                USERTextBox1.Text = ViewState["user"].ToString();
            }
            if (ViewState["pass"] != null)
            {
                PASSTextBox2.Text = ViewState["pass"].ToString();
            }
        }

        protected void SUBMITButton1_Click(object sender, EventArgs e)
        {
            ViewState["user"] = USERTextBox1.Text;
            ViewState["pass"] = PASSTextBox2.Text;

            USERTextBox1.Text = string.Empty;
            PASSTextBox2.Text = string.Empty;

            Response.Redirect("WebForm2.aspx");
        }
    }
}