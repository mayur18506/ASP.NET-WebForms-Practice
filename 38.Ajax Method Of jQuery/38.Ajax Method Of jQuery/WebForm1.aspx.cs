using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

namespace _38.Ajax_Method_Of_jQuery
{
    public partial class WebForm1 : System.Web.UI.Page
    {
       static string cs = ConfigurationManager.ConnectionStrings["dbcs"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        [WebMethod]
        public static string Getdata(string uname,string surname)
        {
            //Thread.Sleep(2000);
            //return "Your name is: " + uname + " and your surname is: " + surname;

            SqlConnection con = new SqlConnection(cs);
            string query = "insert into person values(@uname,@surname)";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.Parameters.AddWithValue("@uname", uname);
            cmd.Parameters.AddWithValue("@surname", surname);
            con.Open();
            int a = cmd.ExecuteNonQuery();
            con.Close();
            if (a > 0) 
            {
                Thread.Sleep(2000);

                return "Data has been Inserted Successfully.";   
            }
            else
            {
                return "Data Inserted Failed.";

            }
           


        }
    }
}