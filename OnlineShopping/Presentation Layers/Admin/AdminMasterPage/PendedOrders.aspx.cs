using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineShopping.Presentation_Layers.Admin.AdminMasterPage
{
    public partial class PendedOrders : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                FillGridView();
                if (GridView1.Rows.Count == 0)
                    Label2.Text = "No Pended Orders";
            }
        }

        private void FillGridView()
        {
            DataTable dt = new DataTable();
            dt = OrderBL.GettPendedOrder();
            GridView1.DataSource = dt;
            GridView1.DataBind();
            if (GridView1.Rows.Count == 0)
                Label2.Text = "No Pended Orders";
            ViewState.Add("Mydt", dt);
        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "AcceptBtn")
            {

                DataTable dt2 = new DataTable();
                dt2 = ViewState["Mydt"] as DataTable;
                int rowIndex = Convert.ToInt32(e.CommandArgument);
                string orderId = dt2.Rows[rowIndex][0].ToString();
                OrderBL.updateOrderStatus(int.Parse(orderId), "approved");
                FillGridView();
            }
            else if(e.CommandName == "RejectBtn")
            {
                DataTable dt2 = new DataTable();
                dt2 = ViewState["Mydt"] as DataTable;
                int rowIndex= Convert.ToInt32(e.CommandArgument);
                string orderId = dt2.Rows[rowIndex][0].ToString();
                OrderBL.updateOrderStatus(int.Parse(orderId),"rejected");
                FillGridView();

            }
        }
    }
}