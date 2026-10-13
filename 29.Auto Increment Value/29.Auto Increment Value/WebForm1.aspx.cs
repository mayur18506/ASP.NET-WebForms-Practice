using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _29.Auto_Increment_Value
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        string cs = ConfigurationManager.ConnectionStrings["dbcs"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                getId();
                bindGridview();
            }
           
        }
        void getId()
        {
            SqlConnection con = new SqlConnection(cs);
            string query = "select id from tbl";
            SqlDataAdapter sda = new SqlDataAdapter(query, con);
            DataTable data = new DataTable();
            sda.Fill(data);
            if (data.Rows.Count < 1)
            {
                IDTextBox1.Text = "1";

            }
            else
            {
                string query1 = "select max(id) from tbl";
                SqlCommand cmd = new SqlCommand(query1, con);
                con.Open();
                int i = Convert.ToInt32(cmd.ExecuteScalar());
                con.Close();
                i = i + 1;
                IDTextBox1.Text = i.ToString();
            }
        }

        protected void INSERTButton1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(cs);
            string query = "insert into tbl values (@id, @name, @age)";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.Parameters.AddWithValue("@id", IDTextBox1.Text);
            cmd.Parameters.AddWithValue("@name", NAMETextBox2.Text);
            cmd.Parameters.AddWithValue("@age", AGETextBox3.Text);
            con.Open();
            int a = cmd.ExecuteNonQuery();
            if (a > 0)
            {
                Response.Write("<script>alert('Inserted !!')</script>");
                getId();
                bindGridview();
                NAMETextBox2.Text = "";
                AGETextBox3.Text = "";
            }
            else
            {
                Response.Write("<script>alert('Not Inserted !!')</script>");

            }
            con.Close();
        }
        void bindGridview()
        {
            SqlConnection con = new SqlConnection(cs);
            string query = "select * from tbl";
            SqlDataAdapter sda = new SqlDataAdapter(query, con);
            DataTable data = new DataTable();
            sda.Fill(data);
            GridView1.DataSource = data;
            GridView1.DataBind();
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            GridViewRow row = GridView1.SelectedRow;

            Label iblId=row.FindControl("LabelId") as Label;
            Label iblName=row.FindControl("LabelName") as Label;
            Label iblAge=row.FindControl("LabelAge") as Label;

            IDTextBox1.Text = iblId.Text;
            NAMETextBox2.Text = iblName.Text;
            AGETextBox3.Text = iblAge.Text;
        }

        protected void UPDATEButton2_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(cs);
            string query = "update tbl set name=@name, age=@age where id=@id";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.Parameters.AddWithValue("@id", IDTextBox1.Text);
            cmd.Parameters.AddWithValue("@name", NAMETextBox2.Text);
            cmd.Parameters.AddWithValue("@age", AGETextBox3.Text);
            con.Open();
            int a = cmd.ExecuteNonQuery();
            if (a > 0)
            {
                Response.Write("<script>alert('Updated !!')</script>");
                getId();
                bindGridview();
                NAMETextBox2.Text = "";
                AGETextBox3.Text = "";
            }
            else
            {
                Response.Write("<script>alert('Not Updated !!')</script>");

            }
            con.Close();
        }

        protected void DELETEButton3_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(cs);
            string query = "delete from tbl where id=@id";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.Parameters.AddWithValue("@id", IDTextBox1.Text);
            con.Open();
            int a = cmd.ExecuteNonQuery();
            if (a > 0)
            {
                Response.Write("<script>alert('Deleted !!')</script>");
                getId();
                bindGridview();
                NAMETextBox2.Text = "";
                AGETextBox3.Text = "";
            }
            else
            {
                Response.Write("<script>alert('Not Deleted !!')</script>");

            }
            con.Close();
        }
    }
}