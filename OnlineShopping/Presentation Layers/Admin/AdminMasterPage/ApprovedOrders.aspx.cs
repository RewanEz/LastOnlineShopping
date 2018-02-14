using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineShopping.Presentation_Layers.Admin.AdminMasterPage
{
    public partial class ApprovedOrders : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                FillGridView();

            }

        }

        private void FillGridView()
        {
            DataTable dt1 = new DataTable();
            dt1 = OrderBL.GettApprovedOrder();
            ViewState.Add("Mydt", dt1);
            GridView1.DataSource = dt1;
            GridView1.DataBind();
            if (GridView1.Rows.Count == 0)
                Label1.Text = "No Approved Orders";


        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            DataTable dt2 = new DataTable();
            dt2 = ViewState["Mydt"] as DataTable;
            int rowIndex = Convert.ToInt32(e.CommandArgument);
            string orderId = dt2.Rows[rowIndex][0].ToString();
            OrderBL.updateOrderStatus(int.Parse(orderId),"delivered");
            FillGridView();
            
        }
    }
}