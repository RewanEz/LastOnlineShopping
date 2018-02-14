using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineShopping.User_Controls
{
    public partial class History : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                FillToGridViews();

            }
        }

        private void FillToGridViews()
        {   
            //how i can write email here as session from login
            string status = OrderBL.GetStatus(Session["emailUnblockedSession"].ToString());
            DataTable dt = OrderBL.GetOrders(Session["emailUnblockedSession"].ToString());
            if(status=="pending")
            {
                pendingID.DataSource = dt;
                pendingID.DataBind();
            }
            else if(status=="accepted")
            {
                AcceptedID.DataSource = dt;
                AcceptedID.DataBind();
            }
            else if (status == "cancelled")
            {
                CancelledID.DataSource = dt;
                CancelledID.DataBind();
            }
            else if (status == "rejected")
            {
                RejectedID.DataSource = dt;
                RejectedID.DataBind();
            }
            else if (status == "delivered")
            {
                DeliveredID.DataSource = dt;
                DeliveredID.DataBind();
            }
        }
    }
}