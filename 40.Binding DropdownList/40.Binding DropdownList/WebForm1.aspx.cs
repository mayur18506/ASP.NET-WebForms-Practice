using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

namespace _40.Binding_DropdownList
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        string cs = ConfigurationManager.ConnectionStrings["dbcs"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindCountryDDL();
            }
        }
        void BindCountryDDL()
        {
            SqlConnection con = new SqlConnection(cs);
            string query = "select * from country";
            SqlDataAdapter sda = new SqlDataAdapter(query, con);
            DataTable data = new DataTable();
            sda.Fill(data);
            countryDropDownList1.DataSource = data;
            countryDropDownList1.DataTextField = "country_name";
            countryDropDownList1.DataValueField = "country_id";
            countryDropDownList1.DataBind();

            ListItem selectitem = new ListItem("Select Country", "Select Country");
            selectitem.Selected = true;
            countryDropDownList1.Items.Insert(0, selectitem);
        }

        void BindCityDDL(int country_id)
        {
            SqlConnection con = new SqlConnection(cs);
            string query = "select * from city where c_id = @country_id";
            SqlDataAdapter sda = new SqlDataAdapter(query, con);
            sda.SelectCommand.Parameters.AddWithValue("@country_id", country_id);
            DataTable data = new DataTable();
            sda.Fill(data);
            cityDropDownList2.DataSource = data;
            cityDropDownList2.DataTextField = "city_name";
            cityDropDownList2.DataValueField = "city_id";
            cityDropDownList2.DataBind();

            ListItem selectitem = new ListItem("Select City", "Select City");
            selectitem.Selected = true;
            cityDropDownList2.Items.Insert(0, selectitem);
        }

        protected void countryDropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            try
            {
                int country_id = Convert.ToInt32(countryDropDownList1.SelectedValue);
                BindCityDDL(country_id);
            }
            catch(Exception ex)
            {
                Response.Write("<script>alert('Country is Required')</script>");
            }
          
        }

        protected void submitButton1_Click(object sender, EventArgs e)
        {
            Response.Write("Selcted Country is :" + countryDropDownList1.SelectedItem.ToString() + "<br>");
            Response.Write("Selcted Country is :" + countryDropDownList1.SelectedValue.ToString() + "<br>");

            Response.Write("Selcted City is :" + cityDropDownList2.SelectedItem.ToString() + "<br>");
            Response.Write("Selcted City is :" + cityDropDownList2.SelectedValue.ToString() + "<br>");
        }
    }
}