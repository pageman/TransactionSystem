using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ISPROG3_Final
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            User n = new User();
            n.Name = TextBox1.Text;
            n.Username = TextBox2.Text;
            n.Password = TextBox3.Text;
            n.UserType = DropDownList1.Text;
            n.Register();
            Response.Redirect("Webform14.aspx");
        }

        protected void Button2_Click1(object sender, EventArgs e)
        {
            if (TextBox4.Text == "Salesmaster")
            {
                DropDownList1.Enabled = true;
                TextBox4.Visible = false;
                Label2.Visible = false;
                Button2.Visible = false;
                Label3.Visible = false;

            }
            else
            {
                if (TextBox4.Text == "" || TextBox4.Text != "Salesmaster")
                Label3.Visible = true;
            }
        }
    }
}