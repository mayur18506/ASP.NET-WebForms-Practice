using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

namespace _30.Data_Sending
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        string cs = ConfigurationManager.ConnectionStrings["dbcs"].ConnectionString;
        private Image img; // changed from object to Image

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindGrid();
            }
        }
        void BindGrid()
        {
           SqlConnection con=new SqlConnection(cs);
            string query = "select * from tbl";
            SqlDataAdapter sda=new SqlDataAdapter(query, con);
            DataTable data = new DataTable();
            sda.Fill(data);
            GridView1.DataSource = data;
            GridView1.DataBind();
        }

        protected System.Web.SessionState.HttpSessionState GetSession()
        {
            return Session;
        }

        // fixed signature: removed extra HttpSessionState parameter
        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            GridViewRow row = GridView1.SelectedRow;
            Label lblid=row.FindControl("LabelId") as Label;
            Label lblname = row.FindControl("LabelName") as Label;
            Label lblage = row.FindControl("LabelAge") as Label;

            //Response.Redirect("WebForm2.aspx?id=" + lblid.Text + "&name=" + lblname.Text + "&age=" + lblage.Text);
            Session["id"] = lblid.Text;
            Session["name"] = lblname.Text;
            Session["age"] = lblage.Text;

            // find the Image control in the selected row (replace "Image1" with your actual Image control ID)
            img = row.FindControl("Image1") as Image;
            if (img != null)
            {
                Session["img"] = img.ImageUrl;
            }
            else
            {
                Session["img"] = null;
            }

            Response.Redirect("WebForm2.aspx");
        }
    }
}