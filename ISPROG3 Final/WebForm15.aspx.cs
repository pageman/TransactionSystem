using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ISPROG3_Final
{
    public partial class WebForm15 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            UpdateGrid();
        }

        void UpdateGrid()
        {
            User b = new User();
            GridView1.DataSource = b.GetAudit();
            GridView1.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            User c = new User();
            c.AuditID = int.Parse(GridView1.SelectedRow.Cells[1].Text);
            c.DeleteAudit();
            UpdateGrid();
        }
    }
}