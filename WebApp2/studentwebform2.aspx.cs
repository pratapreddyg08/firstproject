using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;
using StudentBLL;

namespace WebApp2
{
    public partial class studentwebform2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ClsBusLayer objBLL = new ClsBusLayer();
            GridView1.DataSource = objBLL.selectstudent();
            GridView1.DataBind();
        }

        protected void btnsave_Click(object sender, EventArgs e)
        {
            ClsBusLayer objBLL = new ClsBusLayer();
            objBLL.insertstudent(Convert.ToInt32(txtid.Text),txtname.Text,txtschool.Text);
            MessageBox.Show("Saved");
            Reset();
            GridView1.DataSource = objBLL.selectstudent();

        }

        protected void btnupdate_Click(object sender, EventArgs e)
        {
            ClsBusLayer objBLL = new ClsBusLayer();
            objBLL.updatestudent( txtname.Text, txtschool.Text, Convert.ToInt32(txtid.Text));
            MessageBox.Show("updated");
            Reset();
            GridView1.DataSource = objBLL.selectstudent();
        }

        protected void btndelete_Click(object sender, EventArgs e)
        {
            ClsBusLayer objBLL = new ClsBusLayer();
            objBLL.deletestudent(Convert.ToInt32(txtid.Text));
            MessageBox.Show("deleted");
            Reset();
            GridView1.DataSource = objBLL.selectstudent();
        }
        public void Reset()
        {
            txtid.Text = string.Empty;
            txtname.Text = string.Empty;
            txtschool.Text = string.Empty;
        }
    }
}