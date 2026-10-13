using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;

namespace _26.ListBox_ASP
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        string cs = ConfigurationManager.ConnectionStrings["dbcs"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindListBox();
            }
        }
        void BindListBox()
        {
            SqlConnection con = new SqlConnection(cs);
            string query = "select * from employee";
            SqlDataAdapter sda = new SqlDataAdapter(query, con);
            DataTable data = new DataTable();
            sda.Fill(data);
            ListBox1.DataSource = data;
            ListBox1.DataTextField = "name";
            ListBox1.DataValueField = "Id";
            ListBox1.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (ListBox1.SelectedIndex == -1)
            {
                Response.Write("Please Select any Name...");
            }
            else
            {
                foreach (ListItem li in ListBox1.Items)
                {
                    if (li.Selected)
                    {
                        Response.Write("Selected Item Text is: " + li.Text + "<br>");
                        Response.Write("Selected Item Value is: " + li.Value + "<br>");
                        Response.Write("Selected Item Index is: " + ListBox1.Items.IndexOf(li) + "<br>");
                        Response.Write("................................................................" + "<br>");
                    }
                }
              
            }
           

        }
    }
}