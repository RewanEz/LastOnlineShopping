using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineShopping.Master_Pages
{
    public partial class AdminMaster : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                
            }
        }

        protected void SearchBtn_Click(object sender, EventArgs e)
        {

            string SearchWord = SearchTxtBox.Text;
            Session["SearchWord"] = SearchWord;
            Response.Redirect("SearchResult.aspx");
   
        }
    }
}