using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ISPROG3_Final
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label9.Text = "Welcome " + Session["Name"].ToString() + " !";
            UpdateGrid();
        }

        void UpdateGrid()
        {
            User b = new User();
            b.Username = Session["Name"].ToString();
            GridView1.DataSource = b.GetAccount();
            GridView1.DataBind();

            User a = new User();
            GridView2.DataSource = a.GetAccount2();
            GridView2.DataBind();
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            User b = new User();
            b.Name = TextBox1.Text;
            b.Password = TextBox2.Text;
            b.Birthday = TextBox3.Text;
            b.Email = TextBox4.Text;
            b.Username = Session["Name"].ToString();
            b.EditAccount();
            UpdateGrid();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("WebForm9.aspx");
        }
    }
}