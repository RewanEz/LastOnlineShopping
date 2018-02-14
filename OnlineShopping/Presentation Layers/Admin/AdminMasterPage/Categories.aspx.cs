using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineShopping.Presentation_Layers.Admin.AdminMasterPage
{
    public partial class Categories : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                FillGridView();
            }
        }

        private void FillGridView()
        {
            DataTable dt = new DataTable();
            dt= CategoryBL.GetAll() as DataTable;
            GridView1.DataSource = dt;
            GridView1.DataBind();
            ViewState.Add("Mydt", dt);

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
      
            CatTxt.Visible = true;
            AddBtn.Visible = true;

        }

        

        

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            
            
        }

      

        protected void Button2_Click(object sender, EventArgs e)
        {
            string NewCat = CatTxt.Text;
            CategoryBL.Insert(NewCat);
            FillGridView();
            CatTxt.Visible = false;
            AddBtn.Visible = false;

        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            DataTable dt2 = new DataTable();
            dt2 = ViewState["Mydt"] as DataTable;
            int rowIndex = Convert.ToInt32(e.CommandArgument);
            string CatName = dt2.Rows[rowIndex][0].ToString();
            CategoryBL.Delete(CatName);
            FillGridView();

        }

        
    }
}