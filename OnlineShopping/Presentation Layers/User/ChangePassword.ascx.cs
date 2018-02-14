using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineShopping.Presentation_Layers.User
{
    public partial class ChangePassword : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {


            if (!IsPostBack)
            {

            }
        }


        protected void update(object sender, EventArgs e)
        {


            var password = "11111";
            var id = 1;

            if (txtCurrent.Text == password)
            {
                if (txtNew.Text == txtReWrite.Text)
                {
                    var updated = UserBL.UpdatePass(txtNew.Text, id);
                    if (updated > 0)
                    {
                        Label1.Text = "Password Changed Successfully";
                    }

                }
                else
                {
                    Label1.Text = "Passwords Does'nt Match ! ";
                }
            }
            else
            {
                Label1.Text = "the Current Password Is Wrong !";
            }
        }
    }
}