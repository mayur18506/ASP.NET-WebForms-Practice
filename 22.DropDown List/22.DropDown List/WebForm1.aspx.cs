using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _22.DropDown_List
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //if (!IsPostBack)
            //{
            //    DropDownList1.SelectedIndex = 1;
            //}


            //if (!IsPostBack)
            //{
            //    ListItem l1 = new ListItem("Hydrabad", "1");
            //    ListItem l2 = new ListItem("Mumbai", "2", false);
            //    ListItem l3 = new ListItem("Chennai", "3");
            //    ListItem l4 = new ListItem("Kolkata", "4");

            //    DropDownList1.Items.Add(l1);
            //    DropDownList1.Items.Add(l2);
            //    DropDownList1.Items.Add(l3);
            //    DropDownList1.Items.Add(l4);
            //    DropDownList1.Items[2].Selected = true;
            //}

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (DropDownList1.SelectedValue == "-1")
            {
                Response.Write("Please select a city");
            }
            else
            {
                Response.Write("Selected Item text is: " + DropDownList1.SelectedItem.Text + "<br />");
                Response.Write("Selected Item Value is: " + DropDownList1.SelectedItem.Value + "<br />");
                Response.Write("Selected Item Index is: " + DropDownList1.SelectedIndex + "<br />");

            }
        }
    }
}