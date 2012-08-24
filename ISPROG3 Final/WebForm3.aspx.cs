using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ISPROG3_Final
{
    public partial class WebForm3 : System.Web.UI.Page
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
            GridView2.DataSource = b.GetOrders();
            GridView2.DataBind();
        }

        protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            TextBox1.Text = GridView1.SelectedRow.Cells[1].Text;
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            Order b = new Order();
            b.OrderStatus = "Approved";
            b.OrderID = int.Parse(GridView2.SelectedRow.Cells[1].Text);
            b.ChangeOrderStatus();
            UpdateGrid();
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            Order b = new Order();
            b.OrderStatus = "On Hold";
            b.OrderID = int.Parse(GridView2.SelectedRow.Cells[1].Text);
            b.ChangeOrderStatus();
            UpdateGrid();
        }

        protected void Button7_Click(object sender, EventArgs e)
        {
            Order c = new Order();
            c.OrderID = int.Parse(GridView2.SelectedRow.Cells[1].Text);
            c.DeleteOrder();
            UpdateGrid();
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Product d = new Product();
            d.ProductName = TextBox1.Text;
            GridView3.DataSource = d.SelectSales();
            GridView3.DataBind();
        }
    }
}