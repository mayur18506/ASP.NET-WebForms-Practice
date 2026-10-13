using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _19.CRUD_with_Grid_View
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            SqlDataSource1.InsertParameters["name"].DefaultValue =
              ((TextBox)GridView1.FooterRow.FindControl("FooterName")).Text;

            SqlDataSource1.InsertParameters["gender"].DefaultValue =
            ((DropDownList)GridView1.FooterRow.FindControl("FooterDdlGender")).SelectedValue;

            SqlDataSource1.InsertParameters["class"].DefaultValue =
            ((TextBox)GridView1.FooterRow.FindControl("FooterClass")).Text;

            int a = SqlDataSource1.Insert();
            if (a > 0) 
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Insertion Successfull !!')</script>");
            }
            else
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Insertion Failed !!')</script>");

            }
        }
    }
}