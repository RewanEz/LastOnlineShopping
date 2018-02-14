using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using OnlineShopping.Models;

namespace OnlineShopping.User_Controls
{
    public partial class GetRecentProducts : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                fillCategory();

            }

        }

        private void fillCategory()
        {
            DataTable dt = CategoryBL.GetAll();
            ddlCategory.DataSource = dt;
            ddlCategory.DataTextField = "Name";
            ddlCategory.DataValueField = "Name";
            ddlCategory.DataBind();
        }



        protected void ddlCategory_Load(object sender, EventArgs e)
        {
            string name = ddlCategory.SelectedValue;
            DataTable dt = ProductBL.GetRecent(name);
            ListView1.DataSource = dt;
            ListView1.DataBind();

        }

        protected void ddlCategory_SelectedIndexChanged(object sender, EventArgs e)
        {
            string name = ddlCategory.SelectedValue;
            DataTable dt = ProductBL.GetRecent(name);
            ListView1.DataSource = dt;
            ListView1.DataBind();
        }

        protected void btnAddToCart_Click(object sender, EventArgs e)
        {
            var btn = (Button)sender;
            var item = (ListViewItem)btn.NamingContainer;
            // find other controls:
            HiddenField hidden = (HiddenField)item.FindControl("productId");
            Label price = (Label)item.FindControl("price");
            Label name = (Label)item.FindControl("productName");
            int productId = int.Parse(hidden.Value);
            List<CartItem> cartList = (List<CartItem>)Session["cartList"];
            CartItem cartItem = new CartItem() { ProductId = productId, Quantity = 1, Name=name.Text, Price=int.Parse(price.Text) };
         
            int flag = 0;
            for(int i=0; i<cartList.Count;i++)
            {
                if(cartList[i].ProductId==productId)
                {
                    cartList[i].Quantity += 1;
                    flag = 1;
                }
            }
            if(flag==0)
            {
                cartList.Add(cartItem);
            }

            Session["cartList"] = cartList;
        }
    }
}