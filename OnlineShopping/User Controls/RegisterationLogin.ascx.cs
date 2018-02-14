using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineShopping.User_Controls
{
    public partial class RegisterationLogin : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

                fillTogender();
            }
        }
        private void fillTogender()
        {
            rblgender.Items.Add("Female");
            rblgender.Items.Add("Male");

        }
        protected void btncreate_Click(object sender, EventArgs e)
        {
            var td=UserBL.GetUserByEmail(txtmail1.Text) as DataTable;
            // Console.WriteLine(td);
            int x = td.Rows.Count;
          // int x=int.Parse(td.Rows[0]["Email"].ToString());
            if(x!=0)
            {
                lbexist.Text = "You Are Exist before";
            }
            else
            {
                int y = int.Parse(txtage.Text);
               int z = UserBL.Insert(txtfn.Text,txtln.Text,txtmail1.Text,txtpass1.Text,y,rblgender.Text);
                Session.Add("emailSession", txtmail1.Text);
                ///waiting presentation layers'folder completed
                // Response.Redirect("~/PresentationLayer/Anonymous/Home");
                lbexist.Text = "inserted";
            }
                
            //int x = UsersBL.insert(txtID.Text, txtUn.Text, txtPWD.Text, txtMail.Text, "student");
            //if (x != 0)
            //{
            //    Session.Add("un", txtUn.Text);

            //    Response.Redirect("~/PresentationLayer/Anonymous/login.aspx");
            //}
            //else
            //{
               // Label1.Text = "invalid";
            //}
        }
        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            string status = UserBL.checkOne(txtMail.Text, txtPass.Text);
            if(status=="blocked")
            {
                //Response.Redirect("~/PresentationLayer/Anonymous/Home");
            }
            else if(status=="unblocked")
            {
                Session.Add("emailUnblockedSession", txtMail.Text);
                //Response.Redirect("~/PresentationLayer/User/Home");

            }
            else if(status=="Wrong")
            {
                lbinvalid.Text = "invalid email or password"; 
            }
            else if(status=="Admin")
            {
                //Response.Redirect("~/PresentationLayers/Admin/Home");

            }
        }
        }
}