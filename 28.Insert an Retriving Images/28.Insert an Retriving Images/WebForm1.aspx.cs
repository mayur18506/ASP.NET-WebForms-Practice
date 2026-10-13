using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using System.IO;

namespace _28.Insert_an_Retriving_Images
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        string cs = ConfigurationManager.ConnectionStrings["dbcs"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                fillGridView();
            }
            if (IsPostBack)
            {
                fillGridView();

            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(cs);
            string path = Server.MapPath("Images/");
            if (FileUpload1.HasFile)
            {
                string filename = Path.GetFileName(FileUpload1.FileName);
                string extension = Path.GetExtension(filename);
                HttpPostedFile postedFile=FileUpload1.PostedFile;
                int length = postedFile.ContentLength;

               
                // optional: save the uploaded file
                string fullPath = Path.Combine(path, filename);
                FileUpload1.SaveAs(fullPath);

                if (extension.ToLower() == ".jpg" || extension.ToLower() == ".png" || extension.ToLower() == ".jpeg")
                {
                    if (length <= 1000000)
                    {
                        FileUpload1.SaveAs(path + filename);
                        string name = "Images/" + filename;

                        string query = "insert into img values(@img)";
                        SqlCommand cmd = new SqlCommand(query, con);
                        cmd.Parameters.AddWithValue("@img", name);
                        con.Open();
                        int a = cmd.ExecuteNonQuery();
                        if (a > 0) 

                        {
                            Label1.Text = "Inserted Successfully.";
                            Label1.ForeColor = System.Drawing.Color.Green;
                            Label1.Visible = true;
                            fillGridView();

                        }
                        else
                        {
                            Label1.Text = "Insertion Failed.";
                            Label1.ForeColor = System.Drawing.Color.Red;
                            Label1.Visible = true;
                        }
                        con.Close();
                    }
                    else
                    {
                        Label1.Text = "Image File Should not be Greater than 1 MB.";
                        Label1.ForeColor = System.Drawing.Color.Red;
                        Label1.Visible = true;
                    }
                }
                else
                {
                    Label1.Text = "Image Format is Not Supported.";
                    Label1.ForeColor = System.Drawing.Color.Red;
                    Label1.Visible = true;
                }
            }
            else
            {
                Label1.Text = "Please select a file to upload.";
                Label1.ForeColor = System.Drawing.Color.Red;
                Label1.Visible = true;
            }
        }
        void fillGridView()
        {
            SqlConnection con = new SqlConnection(cs);
            string query = "select * from img";
            SqlDataAdapter sda= new SqlDataAdapter(query, con);
            DataTable data = new DataTable();
            sda.Fill(data);
            GridView1.DataSource = data;
            GridView1.DataBind();
        }
    }
}