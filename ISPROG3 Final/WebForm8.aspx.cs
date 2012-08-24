using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ISPROG3_Final
{
    public partial class WebForm8 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            UpdateGrid();
        }

        void UpdateGrid()
        {
            Product a = new Product();
            GridView1.DataSource = a.GetProduct2();
            GridView1.DataBind();

            Order b = new Order();
            b.Username = Session["Name"].ToString();
            GridView2.DataSource = b.GetOrders2();
            GridView2.DataBind();
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Product d = new Product();
            d.ProductName = TextBox1.Text;
            GridView1.DataSource = d.SelectProduct2();
            GridView1.DataBind();
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            Label6.Text = GridView1.SelectedRow.Cells[1].Text;
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            Order a = new Order();
            a.ProductName = GridView1.SelectedRow.Cells[1].Text;
            a.Quantity = int.Parse(TextBox3.Text);
            a.OrderStatus = "Pending";
            a.Contact = TextBox4.Text;
            a.Address = TextBox5.Text;
            a.Username = Session["Name"].ToString();
            a.AddOrder();
            UpdateGrid();
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            Order b = new Order();
            b.ProductName = GridView1.SelectedRow.Cells[1].Text;
            b.Quantity = int.Parse(TextBox3.Text);
            b.Contact = TextBox4.Text;
            b.Address = TextBox5.Text;
            b.OrderID = int.Parse(GridView2.SelectedRow.Cells[1].Text);
            b.EditOrder();
            UpdateGrid();
        }

        protected void Button7_Click(object sender, EventArgs e)
        {
            Order b = new Order();
            b.OrderStatus = "Cancelled";
            b.OrderID = int.Parse(GridView2.SelectedRow.Cells[1].Text);
            b.ChangeOrderStatus();
            UpdateGrid();
        }

        protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
        {
            Label6.Text = GridView2.SelectedRow.Cells[2].Text;
            TextBox3.Text = GridView2.SelectedRow.Cells[3].Text;
            TextBox4.Text = GridView2.SelectedRow.Cells[5].Text;
            TextBox5.Text = GridView2.SelectedRow.Cells[6].Text;
        }
    }
}