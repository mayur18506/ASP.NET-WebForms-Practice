using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.IO;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections.Generic;

namespace _33.CRUD_App_with_Images
{
    public partial class WebForm1 : System.Web.UI.Page
    {
         string cs = ConfigurationManager.ConnectionStrings["dbcs"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindGridView();
            }
        }

        void ResetControls()
        {
            IDTextBox1.Text = "";
            NAMETextBox2.Text = "";
            AGETextBox3.Text = "";
            SALARYTextBox4.Text = "";

            GENDERDropDownList1.ClearSelection();
            DESIGDropDownList2.ClearSelection();

            Label1.Visible = false;
        }

        protected void INSERTButton1_Click(object sender, EventArgs e)
        {
            // Check image
            if (!IMAGEFileUpload1.HasFile)
            {
                Label1.Text = "Please select an image";
                Label1.Visible = true;
                Label1.ForeColor = System.Drawing.Color.Red;
                return;
            }

            // Get file information
            string originalFileName =
                Path.GetFileName(IMAGEFileUpload1.FileName);

            string extension =
                Path.GetExtension(originalFileName).ToLower();

            int fileSize =
                IMAGEFileUpload1.PostedFile.ContentLength;

            // Validate extension
            if (extension != ".jpg" &&
                extension != ".jpeg" &&
                extension != ".png")
            {
                Label1.Text =
                    "Please select a valid image file (JPG, JPEG, PNG)";

                Label1.Visible = true;
                Label1.ForeColor = System.Drawing.Color.Red;
                return;
            }

            // Validate file size - 1 MB
            if (fileSize > 1000000)
            {
                Label1.Text =
                    "File size exceeds the limit of 1MB";

                Label1.Visible = true;
                Label1.ForeColor = System.Drawing.Color.Red;
                return;
            }

            // Validate Age
            int age;

            if (!int.TryParse(AGETextBox3.Text, out age))
            {
                Label1.Text = "Please enter a valid age";
                Label1.Visible = true;
                Label1.ForeColor = System.Drawing.Color.Red;
                return;
            }

            // Validate Salary
            decimal salary;

            if (!decimal.TryParse(SALARYTextBox4.Text, out salary))
            {
                Label1.Text = "Please enter a valid salary";
                Label1.Visible = true;
                Label1.ForeColor = System.Drawing.Color.Red;
                return;
            }

            // Create Images folder
            string folderPath = Server.MapPath("~/Images/");

            if (!Directory.Exists(folderPath))
            {
                Directory.CreateDirectory(folderPath);
            }

            // Create unique file name
            string filename =
                Guid.NewGuid().ToString() + extension;

            string filePath =
                Path.Combine(folderPath, filename);

            // Save image
            IMAGEFileUpload1.SaveAs(filePath);

            // Path stored in database
            string imagePath = "Images/" + filename;

            string query = @"INSERT INTO emp
                 (Name, Age, Gender, Designation, Salary, image_Path)
                 VALUES
                 (@Name, @Age, @Gender, @Designation, @Salary, @image_Path)";

            using (SqlConnection con = new SqlConnection(cs))
            {
                using (SqlCommand cmd = new SqlCommand(query, con))
                {
                    cmd.Parameters.Add("@Name", SqlDbType.VarChar, 100)
                        .Value = NAMETextBox2.Text;

                    cmd.Parameters.Add("@Age", SqlDbType.Int)
                        .Value = age;

                    cmd.Parameters.Add("@Gender", SqlDbType.VarChar, 20)
                        .Value = GENDERDropDownList1.SelectedValue;

                    cmd.Parameters.Add("@Designation", SqlDbType.VarChar, 100)
                        .Value = DESIGDropDownList2.SelectedValue;

                    cmd.Parameters.Add("@Salary", SqlDbType.Decimal)
                        .Value = salary;

                    cmd.Parameters.Add("@image_Path", SqlDbType.VarChar, 300)
                        .Value = imagePath;

                    con.Open();

                    int a = cmd.ExecuteNonQuery();

                    if (a > 0)
                    {
                        Response.Write(
                            "<script>alert('Inserted Successfully !!')</script>"
                        );

                        ResetControls();
                        BindGridView();
                        Label1.Visible = false;
                    }
                    else
                    {
                        Response.Write(
                            "<script>alert('Inserted Failed !!')</script>"
                        );
                    }
                }
            }
        }
        

        protected void RESETButton4_Click(object sender, EventArgs e)
        {
            ResetControls();
        }
        void BindGridView()
        {
            using (SqlConnection con = new SqlConnection(cs))
            {
                using (SqlCommand cmd = new SqlCommand("SELECT * FROM emp", con))
                {
                    using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                    {
                        DataTable dt = new DataTable();
                        sda.Fill(dt);
                        GridView1.DataSource = dt;
                        GridView1.DataBind();
                    }
                }
            }
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged1(object sender, EventArgs e)
        {
            GridViewRow row = GridView1.SelectedRow;

            Label lblid=row.FindControl("LabelId") as Label;
            Label lblname= row.FindControl("LabelName") as Label;
            Label lblage = row.FindControl("LabelAge") as Label;
            Label lblgender = row.FindControl("LabelGender") as Label;
            Label lbldesignation = row.FindControl("LabelDesignation") as Label;
            Label lblsalary = row.FindControl("LabelSalary") as Label;
            System.Web.UI.WebControls.Image img = row.FindControl("Image1") as System.Web.UI.WebControls.Image;

            IDTextBox1.Text = lblid.Text;
            NAMETextBox2.Text = lblname.Text;
            AGETextBox3.Text = lblage.Text;
            GENDERDropDownList1.Text = lblgender.Text;
            DESIGDropDownList2.Text = lbldesignation.Text;
            SALARYTextBox4.Text = lblsalary.Text;
            GetImage.ImageUrl = img.ImageUrl;
            GetImage.Visible = true;
        }

        protected void UPDATEButton2_Click(object sender, EventArgs e)
        {
          
            int age;
            decimal salary;

            // Validate Age
            if (!int.TryParse(AGETextBox3.Text, out age))
            {
                Label1.Text = "Please enter a valid age";
                Label1.Visible = true;
                Label1.ForeColor = System.Drawing.Color.Red;
                return;
            }

            // Validate Salary
            if (!decimal.TryParse(SALARYTextBox4.Text, out salary))
            {
                Label1.Text = "Please enter a valid salary";
                Label1.Visible = true;
                Label1.ForeColor = System.Drawing.Color.Red;
                return;
            }

            string imagePath = null;

            // If new image is selected
            if (IMAGEFileUpload1.HasFile)
            {
                string originalFileName =
                    Path.GetFileName(IMAGEFileUpload1.FileName);

                string extension =
                    Path.GetExtension(originalFileName).ToLower();

                int fileSize =
                    IMAGEFileUpload1.PostedFile.ContentLength;

                // Validate image extension
                if (extension != ".jpg" &&
                    extension != ".jpeg" &&
                    extension != ".png")
                {
                    Label1.Text =
                        "Please select a valid image file (JPG, JPEG, PNG)";

                    Label1.Visible = true;
                    Label1.ForeColor = System.Drawing.Color.Red;
                    return;
                }

                // Validate image size
                if (fileSize > 1000000)
                {
                    Label1.Text = "File size exceeds the limit of 1MB";
                    Label1.Visible = true;
                    Label1.ForeColor = System.Drawing.Color.Red;
                    return;
                }

                // Create Images folder
                string folderPath = Server.MapPath("~/Images/");

                if (!Directory.Exists(folderPath))
                {
                    Directory.CreateDirectory(folderPath);
                }

                // Create unique image name
                string filename =
                    Guid.NewGuid().ToString() + extension;

                string filePath =
                    Path.Combine(folderPath, filename);

                // Save new image
                IMAGEFileUpload1.SaveAs(filePath);

                imagePath = "Images/" + filename;
            }

            using (SqlConnection con = new SqlConnection(cs))
            {
                string query;

                // If new image is selected, update image also
                if (imagePath != null)
                {
                    query = @"UPDATE emp 
                      SET Name = @Name,
                          Age = @Age,
                          Gender = @Gender,
                          Designation = @Designation,
                          Salary = @Salary,
                          image_Path = @image_Path
                      WHERE Id = @Id";
                }
                else
                {
                    // Keep old image
                    query = @"UPDATE emp 
                      SET Name = @Name,
                          Age = @Age,
                          Gender = @Gender,
                          Designation = @Designation,
                          Salary = @Salary
                      WHERE Id = @Id";
                }

                using (SqlCommand cmd = new SqlCommand(query, con))
                {
                    cmd.Parameters.Add("@Id", SqlDbType.Int)
                        .Value = Convert.ToInt32(IDTextBox1.Text);

                    cmd.Parameters.Add("@Name", SqlDbType.VarChar, 100)
                        .Value = NAMETextBox2.Text;

                    cmd.Parameters.Add("@Age", SqlDbType.Int)
                        .Value = age;

                    cmd.Parameters.Add("@Gender", SqlDbType.VarChar, 20)
                        .Value = GENDERDropDownList1.SelectedValue;

                    cmd.Parameters.Add("@Designation", SqlDbType.VarChar, 100)
                        .Value = DESIGDropDownList2.SelectedValue;

                    cmd.Parameters.Add("@Salary", SqlDbType.Decimal)
                        .Value = salary;

                    if (imagePath != null)
                    {
                        cmd.Parameters.Add("@image_Path", SqlDbType.VarChar, 300)
                            .Value = imagePath;
                    }

                    con.Open();

                    int a = cmd.ExecuteNonQuery();

                    if (a > 0)
                    {
                        Response.Write(
                            "<script>alert('Updated Successfully !!')</script>"
                        );

                        ResetControls();
                        BindGridView();
                        Label1.Visible = false;
                        GetImage.Visible = false;
                    }
                    else
                    {
                        Response.Write(
                            "<script>alert('Update Failed !!')</script>"
                        );
                    }
                }
            }
        }
        

        protected void DELETEButton3_Click(object sender, EventArgs e)
        {
           
            if (string.IsNullOrWhiteSpace(IDTextBox1.Text))
            {
                Label1.Text = "Please select a record first";
                Label1.Visible = true;
                Label1.ForeColor = System.Drawing.Color.Red;
                return;
            }

            using (SqlConnection con = new SqlConnection(cs))
            {
                string query = "DELETE FROM emp WHERE Id = @Id";

                using (SqlCommand cmd = new SqlCommand(query, con))
                {
                    cmd.Parameters.Add("@Id", SqlDbType.Int)
                        .Value = Convert.ToInt32(IDTextBox1.Text);

                    con.Open();

                    int a = cmd.ExecuteNonQuery();

                    if (a > 0)
                    {
                        Response.Write(
                            "<script>alert('Deleted Successfully !!')</script>"
                        );

                        ResetControls();
                        BindGridView();
                        GetImage.Visible = false;
                        Label1.Visible = false;
                    }
                    else
                    {
                        Response.Write(
                            "<script>alert('Delete Failed !!')</script>"
                        );
                    }
                }
            }
        }
    }
    }
    
