using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _35.Cookie_in_ASP
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            HttpCookie cookie = new HttpCookie("user");
            cookie["username"] = TextBox1.Text;
            cookie.Expires = DateTime.Now.AddDays(2); // Set cookie expiration date
            Response.Cookies.Add(cookie);
            Response.Redirect("WebForm2.aspx");
        }
    }
}