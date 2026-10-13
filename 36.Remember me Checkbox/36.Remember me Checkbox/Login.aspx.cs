using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using System.Text;

namespace _36.Remember_me_Checkbox
{
    public partial class Login : System.Web.UI.Page
    {
        string cs = ConfigurationManager.ConnectionStrings["dbcs"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Request.Cookies["username"] != null)
                {
                    userTextBox1.Text = Request.Cookies["username"].Value.ToString();
                }
                if (Request.Cookies["password"] != null)
                {
                    string decryptedPassword = Encoding.ASCII.GetString(Convert.FromBase64String(Request.Cookies["password"].Value));


                    passTextBox2.Text = decryptedPassword;

                }
                if (Request.Cookies["username"] != null && Request.Cookies["password"] != null)
                {
                    CheckBox1.Checked = true;
                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(cs);
            string query = "select * from login where Username=@user and Password=@pass";
            SqlDataAdapter sda = new SqlDataAdapter(query, con);
            DataTable data = new DataTable();
            sda.SelectCommand.Parameters.AddWithValue("@user", userTextBox1.Text);
            sda.SelectCommand.Parameters.AddWithValue("@pass", passTextBox2.Text);
            sda.Fill(data);
            if (data.Rows.Count > 0)
            {
                if (CheckBox1.Checked == true)
                {
                    // Set the cookie for remember me functionality
                    Response.Cookies["username"].Value = userTextBox1.Text;
                    byte[] b = ASCIIEncoding.ASCII.GetBytes(passTextBox2.Text);
                    string EncryptedPassword = Convert.ToBase64String(b);

                    Response.Cookies["password"].Value = EncryptedPassword;

                    Response.Cookies["username"].Expires = DateTime.Now.AddDays(30); // Set expiration date
                    Response.Cookies["password"].Expires = DateTime.Now.AddDays(30); // Set expiration date


                }
                else
                {
                    Response.Cookies["username"].Expires = DateTime.Now.AddDays(-2); // Set expiration date
                    Response.Cookies["password"].Expires = DateTime.Now.AddDays(-2); // Set expiration date

                }

                Session["username"] = userTextBox1.Text;
                Response.Redirect("Dashboard.aspx");
                //Session["password"] = passTextBox2.Text;
            }
            else
            {
                Response.Write("<script>alert('Invalid Username or Password')</script>");
            }
        }
    }
}