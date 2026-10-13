using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace _16.Log_In_Form_with_Database
{
    public partial class Register : System.Web.UI.Page
    {
        string cs=ConfigurationManager.ConnectionStrings["dbcs2"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void signupButton1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(cs);
            string query = "insert into signup values(@fname,@lname,@gender,@email,@address,@username,@password)";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.Parameters.AddWithValue("@fname", fnameTextBox1.Text);
            cmd.Parameters.AddWithValue("@lname", lnameTextBox2.Text);
            cmd.Parameters.AddWithValue("@gender", genderDropDownList1.SelectedValue);
            cmd.Parameters.AddWithValue("@email", emailTextBox3.Text);
            cmd.Parameters.AddWithValue("@address", addressTextBox7.Text);
            cmd.Parameters.AddWithValue("@username", userTextBox4.Text);
            cmd.Parameters.AddWithValue("@password", passwordTextBox5.Text);
            con.Open();
            int a =  cmd.ExecuteNonQuery();
            if (a > 0) 
            {
                ClientScript.RegisterStartupScript(typeof(Page), "script", "alert('Signup Successfull .. Username is: " + userTextBox4.Text + " and Password is: " + passwordTextBox5.Text + "');",true);
                ClearControls();
            }
            else
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "scripts","<script>alert('Signup Failed !!')</script>");
            }
            con.Close();
        }
        void ClearControls()
        {
            fnameTextBox1.Text = lnameTextBox2.Text = emailTextBox3.Text = addressTextBox7.Text = userTextBox4.Text = passwordTextBox5.Text = conpassTextBox6.Text = " ";
            genderDropDownList1.ClearSelection();
        }
    }
}