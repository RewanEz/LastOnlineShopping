using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineShopping.User_Controls
{
    public partial class ContactUs : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            //question to ay 7ad
            /// check user email is valid or not f el yahoo or gmail???
            int x = UserBL.InsertFeedBacks(txtmsg.Text, txtname.Text, txtMail.Text);
            if (x != 0)
            { lbmsg.Text = "Your feedBack sent successfully"; }
            else
            {
                lbmsg.Text = "Failed sending message";
            }
        }
    }
}