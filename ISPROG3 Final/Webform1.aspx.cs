using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ISPROG3_Final
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {          
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            ISPROG3_Final.User tmpUser = new User();
            tmpUser.Username = txtUsername.Text;
            tmpUser.Password = txtPassword.Text;

            if (tmpUser.Login())
            {
                if (tmpUser.UserType == "Manager")
                {
                    Session.Add("User", tmpUser);
                    Session.Add("Name", txtUsername.Text);
                    Response.Redirect("WebForm4.aspx");
                }

                else if (tmpUser.UserType == "Client")
                {
                    Session.Add("User", tmpUser);
                    Session.Add("Name", txtUsername.Text);
                    Response.Redirect("WebForm5.aspx");
                }
                else if (tmpUser.UserType == "Sales Clerk")
                {
                    Session.Add("User", tmpUser);
                    Session.Add("Name", txtUsername.Text);
                    Response.Redirect("WebForm10.aspx");
                }
                else if (tmpUser.UserType == "Inventory Clerk")
                {
                    Session.Add("User", tmpUser);
                    Session.Add("Name", txtUsername.Text);
                    Response.Redirect("WebForm11.aspx");
                }
            }
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Webform2.aspx");
        }

        protected void txtUsername_TextChanged(object sender, EventArgs e)
        {

        }
    }
}