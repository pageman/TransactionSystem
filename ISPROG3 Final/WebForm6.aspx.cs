using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

namespace ISPROG3_Final
{
    public partial class WebForm6 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            UpdateGrid();
        }

        void UpdateGrid()
        {
            Product a = new Product();
            GridView1.DataSource = a.GetProduct();
            GridView1.DataBind();
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            TextBox1.Text = GridView1.SelectedRow.Cells[3].Text;
            TextBox2.Text = GridView1.SelectedRow.Cells[4].Text;
            TextBox3.Text = GridView1.SelectedRow.Cells[5].Text;
            TextBox4.Text = GridView1.SelectedRow.Cells[6].Text;
            TextBox5.Text = GridView1.SelectedRow.Cells[7].Text;
            TextBox6.Text = GridView1.SelectedRow.Cells[8].Text;
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Product d = new Product();
            d.ProductName = TextBox1.Text;
            GridView1.DataSource = d.SelectProduct();
            GridView1.DataBind();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Product b = new Product();
            b.ProductName = TextBox1.Text;
            b.SoH = int.Parse(TextBox2.Text);
            b.SR = int.Parse(TextBox3.Text);
            b.Description = TextBox4.Text;
            b.Price = int.Parse(TextBox5.Text);
            b.NumberSold = int.Parse(TextBox6.Text);
            b.ExpiryDate = TextBox7.Text;
            b.ProductID = int.Parse(GridView1.SelectedRow.Cells[2].Text);
            b.EditProduct();
            UpdateGrid();

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Product a = new Product();
            a.ProductName = TextBox1.Text;
            a.SoH = int.Parse(TextBox2.Text);
            a.SR = int.Parse(TextBox3.Text);
            a.Description = TextBox4.Text;
            a.Price = int.Parse(TextBox5.Text);
            a.NumberSold = int.Parse(TextBox6.Text);
            a.ExpiryDate = TextBox7.Text;
            a.AddProduct();
            UpdateGrid();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Product c = new Product();
            c.ProductID = int.Parse(GridView1.SelectedRow.Cells[2].Text);
            c.DeleteProduct();
            UpdateGrid();
        }

    }
}