using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _12.View_State
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (ViewState["user"] != null)
            {
                TextBox1.Text = ViewState["user"].ToString();
            }
            if (ViewState["pass"] != null)
            {
                TextBox2.Text = ViewState["pass"].ToString();
            }
        }
    }
}