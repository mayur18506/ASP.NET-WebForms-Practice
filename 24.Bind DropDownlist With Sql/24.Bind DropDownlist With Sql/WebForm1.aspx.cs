using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using System.Drawing;

namespace _24.Bind_DropDownlist_With_Sql
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        string cs = ConfigurationManager.ConnectionStrings["dbcs"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindDropDownList();
            }
        }
        void BindDropDownList()
        {
            SqlConnection con = new SqlConnection(cs);
            string query = "select * from employee";
            SqlDataAdapter sda = new SqlDataAdapter(query, con);
            DataTable data = new DataTable();
            sda.Fill(data);
            DropDownList1.DataSource = data;
            DropDownList1.DataTextField = "name";
            DropDownList1.DataValueField = "id";
            DropDownList1.DataBind();

            ListItem SelectItem = new ListItem("Select Employee","-1");
            SelectItem.Selected = true;
            DropDownList1.Items.Insert(0,SelectItem);
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (DropDownList1.SelectedValue == "-1")
            {
                Response.Write("Please Select an employee..." + "<br>");
            }
            else
            {
                //Response.Write("Selected Item Text is: " + DropDownList1.SelectedItem.Text + "<br>");
                //Response.Write("Selected Item value is: " + DropDownList1.SelectedItem.Value + "<br>");
                //Response.Write("Selected Item Index is: " + DropDownList1.SelectedIndex);

                SqlConnection con = new SqlConnection(cs);
                string query = "select * from employee where name=@name";
                SqlDataAdapter sda = new SqlDataAdapter(query, con);
                sda.SelectCommand.Parameters.AddWithValue("@name", DropDownList1.SelectedItem.Text);
                DataTable data = new DataTable();
                sda.Fill(data);
                GridView1.DataSource = data;
                GridView1.DataBind();
                Label2.Text = "Rows Found";
                Label2.ForeColor = Color.Green;
                Label2.Visible = true;
             
            }
        }
    }
}