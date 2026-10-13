using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace _31.OR_Filter_Grid_View
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        string cs=ConfigurationManager.ConnectionStrings["dbcs"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                bindGridView();

            }
        }
        void bindGridView()
        {
            SqlConnection con = new SqlConnection(cs);
            string query = "select * from tbl";
            SqlDataAdapter sda = new SqlDataAdapter(query, con);
            DataTable data = new DataTable();
            sda.Fill(data);
            GridView1.DataSource = data;
            GridView1.DataBind();
        }
        void SearchDataByMale()
        {
            SqlConnection con = new SqlConnection(cs);
            string query = "select * from tbl where Gender=@male";
            SqlDataAdapter sda = new SqlDataAdapter(query, con);
            SqlParameter param = new SqlParameter("@male", MALERadioButton1.Text);
            sda.SelectCommand.Parameters.Add(param);
            DataTable data = new DataTable();
            sda.Fill(data);
            GridView1.DataSource = data;
            GridView1.DataBind();
        }
        void SearchDataByFemale()
        {
            SqlConnection con = new SqlConnection(cs);
            string query = "select * from tbl where Gender=@female";
            SqlDataAdapter sda = new SqlDataAdapter(query, con);
            SqlParameter param = new SqlParameter("@female",FEMALERadioButton2.Text);
            sda.SelectCommand.Parameters.Add(param);
            DataTable data = new DataTable();
            sda.Fill(data);
            GridView1.DataSource = data;
            GridView1.DataBind();
        }

        protected void SEARCHButton1_Click(object sender, EventArgs e)
        {
            if (MALERadioButton1.Checked == true)
            {
                SearchDataByMale();
            }
            else if (FEMALERadioButton2.Checked == true)
            {
                SearchDataByFemale();
            }
            else if (BOTHRadioButton3.Checked == true)
            {
                bindGridView();
            }
            else
            {
                Response.Write("<script>alert('Please select a gender')</script>");
            }
        }

        protected void MALERadioButton1_CheckedChanged(object sender, EventArgs e)
        {
            SearchDataByMale();
        }

        protected void FEMALERadioButton2_CheckedChanged(object sender, EventArgs e)
        {
            SearchDataByFemale();
        }

        protected void BOTHRadioButton3_CheckedChanged(object sender, EventArgs e)
        {
            bindGridView();
        }
    }
}