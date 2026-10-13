using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _11.Is_Post_Back
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //if (IsPostBack)
            //{
            //    Response.Write("THIS IS POST BACK REQEST !!");
            //}

            if (!IsPostBack)
            {
                AddListboxitems();
            }
        }

        void AddListboxitems()
        {
            ListBox1.Items.Add("Mayur");
            ListBox1.Items.Add("Karan");
            ListBox1.Items.Add("Kunal");

        }
    }
}