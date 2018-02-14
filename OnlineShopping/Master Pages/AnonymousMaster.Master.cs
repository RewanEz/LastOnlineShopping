using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using OnlineShopping.Models;
using System.Data;

namespace OnlineShopping.Master_Pages
{
    public partial class AnonymousMaster : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                string myScriptValue = "$('#myModal88').modal('show');";
                ScriptManager.RegisterStartupScript(this, this.GetType(), "myScriptName", myScriptValue, true);

                if (Session["cartList"] == null)
                {
                    List<CartItem> cartList = new List<CartItem>();
                    Session["cartList"] = cartList;

                }

            }
        }

        protected void btnCart_Click1(object sender, EventArgs e)
        {
            string myScriptValue = "$('#myCart').modal('show');";
            ScriptManager.RegisterStartupScript(this, this.GetType(), "myScriptName", myScriptValue, true);

            List<CartItem> cartList = (List<CartItem>)Session["cartList"];
            lblCart.Visible = false;
            if (cartList.Count == 0)
            {
                lblCart.Visible = true;
                lblCart.Text = "Cart is empty";
            }
            else
            {
                DataTable dt = new DataTable();
                dt.Columns.Add("Name");
                dt.Columns.Add("Price");
                dt.Columns.Add("Quantity");

                for (int i = 0; i < cartList.Count; i++)
                {
                    var dr = dt.NewRow();
                    dr["Name"] = cartList[i].Name;
                    dr["Price"] = cartList[i].Price;
                    dr["Quantity"] = cartList[i].Quantity;
                    dt.Rows.Add(dr);
                }
                GridView1.DataSource = dt;
                GridView1.DataBind();
            }
        }
    }
}