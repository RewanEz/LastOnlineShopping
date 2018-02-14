using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineShopping.Presentation_Layers.Admin
{
    public partial class ProductPage : System.Web.UI.Page
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
            dt = ProductBL.GetAll();
            GridView1.DataSource = dt;
            GridView1.DataBind();
            ViewState.Add("Mydt", dt);
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            var dt = ViewState["MyDT"] as DataTable;
            GridView1.EditIndex = -1;
            GridView1.DataSource = dt;
            GridView1.DataBind();

        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            var dt = ViewState["MyDT"] as DataTable;
            dt.Rows[e.RowIndex].Delete();
            ViewState.Add("MyDT", dt);
            GridView1.DataSource=dt;
            GridView1.DataBind();
        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            DataTable dt = new DataTable();
            dt = ViewState["Mydt"] as DataTable;
            
            GridView1.DataSource = dt;
            GridView1.DataBind();
            GridView1.EditIndex = e.NewEditIndex;

        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {

        }

        

        protected void Button1_Click1(object sender, EventArgs e)
        {
            Response.Redirect("NewProduct.aspx");
        }
    }
}