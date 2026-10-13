using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

namespace _32.Bootstap_With_ASP
{
    public partial class Contact : System.Web.UI.Page
    {
        string cs = ConfigurationManager.ConnectionStrings["dbcs"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void submitButton1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(cs);
            string query = "insert into contact values(@name,@gender,@email,@subject,@comment)";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.Parameters.AddWithValue("@name", nameTextBox1.Text);
            cmd.Parameters.AddWithValue("@gender", genderDropDownList1.SelectedValue);
            cmd.Parameters.AddWithValue("@email", emailTextBox2.Text);
            cmd.Parameters.AddWithValue("@subject", subjectDropDownList2.SelectedValue);
            cmd.Parameters.AddWithValue("@comment", commentTextBox3.Text);
            con.Open();
                int b = cmd.ExecuteNonQuery();

            if (b > 0)
            {
                Label1.Text = "Form has been Submitted !!";
                Label1.Visible = true;
                Label1.ForeColor = System.Drawing.Color.Green;
                //Response.Write("<script>alert('Form has been Submitted !!')</script>");
                nameTextBox1.Text = emailTextBox2.Text = commentTextBox3.Text = "";
                genderDropDownList1.ClearSelection();
                subjectDropDownList2.ClearSelection();
            }
            else
            {
                Label1.Text = "Form has Not been Submitted !!";
                Label1.Visible = true;
                Label1.ForeColor = System.Drawing.Color.Red;
                //Response.Write("<script>alert('Form has not been Submitted !!')</script>");

            }
            con.Close();
        }
    }
}