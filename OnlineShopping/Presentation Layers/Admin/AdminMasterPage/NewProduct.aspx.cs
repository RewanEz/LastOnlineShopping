using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineShopping.Presentation_Layers.Admin.AdminMasterPage
{
    public partial class NewProduct : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                SuccessIcon.Visible = false;
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string name = NameTxt.Text;
            int price = int.Parse(PriceTxt.Text);
            string desc = DescTxt.Text;
            string catName = CatNameTxt.Text;
            string Image = ImgTxt.PostedFile.FileName;
            int quantity = int.Parse(QuantTxt.Text);
            int promotion = int.Parse(PromoTxt.Text);

            int catID = CategoryBL.GetIDUsingName(catName);
            ProductBL.insert(name, price, desc, catID, Image, quantity, promotion);

            NameTxt.Text = "";
            PriceTxt.Text = "";
            DescTxt.Text = "";
            CatNameTxt.Text = "";
            QuantTxt.Text = "";
            PromoTxt.Text = "";
            SuccessIcon.Visible = true;

        }
    }
}