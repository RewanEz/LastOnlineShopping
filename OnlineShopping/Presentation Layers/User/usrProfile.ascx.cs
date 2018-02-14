using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace OnlineShopping.Presentation_Layers.User
{
    public partial class usrProfile : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                goToFillTextBoxs();
            }
        }

        private void goToFillTextBoxs()
        {
            //btnUpdate.Visible = false;
            //btnCancel.Visible = false;

            var email = "mahmoud@gmail.com";
            var dt = UserBL.GetUserByEmail(email);
            txtFName.Text = dt.Rows[0]["userFname"].ToString();
            txtLname.Text = dt.Rows[0]["userLname"].ToString();
            txtEmail.Text = dt.Rows[0]["Email"].ToString();
            txtGender.Text = dt.Rows[0]["Gender"].ToString();
            txtAge.Text = dt.Rows[0]["Age"].ToString();
            txtFName.Enabled = false;
            txtLname.Enabled = false;
            txtEmail.Enabled = false;
            txtGender.Enabled = false;
            txtAge.Enabled = false;
            Label1.Text = "";


        }

        

        protected void update(object sender, EventArgs e)
        {
            //var _id =int.Parse( Session["id"].ToString());
            var _id = 1;
            var pass = "11111";

            var firstName = txtFName.Text;
            var email = txtEmail.Text;
            var lastName = txtLname.Text;
            var age = int.Parse(txtAge.Text);
            var gender = txtGender.Text;
            var check = UserBL.Update(_id, firstName,lastName, email, pass, age, gender);


            if (check != 0)
            {
                Label1.Text = "updated successfully";
                txtEmail.Enabled = false;
                txtFName.Enabled = false;
                txtAge.Enabled = false;
                txtLname.Enabled = false;
                txtGender.Enabled = false;
                btnCancel.Visible = false;
                btnUpdate.Visible = false;
                btnEdit.Visible = true;
            }
            else
            {
                Label1.Text = "invalid!!!";
            }
        }
        protected void cancel(object sender, EventArgs e)
        {
            btnUpdate.Visible = false;
            btnCancel.Visible = false;
            btnEdit.Visible = true;

            var email = "mahmoud@gmail.com";
            var dt = UserBL.GetUserByEmail(email);
            txtFName.Text = dt.Rows[0]["userFname"].ToString();
            txtLname.Text = dt.Rows[0]["userLname"].ToString();
            txtEmail.Text = dt.Rows[0]["Email"].ToString();
            txtGender.Text = dt.Rows[0]["Gender"].ToString();
            txtAge.Text = dt.Rows[0]["Age"].ToString();
            txtFName.Enabled = false;
            txtLname.Enabled = false;
            txtEmail.Enabled = false;
            txtGender.Enabled = false;
            txtAge.Enabled = false;


        }

        protected void edit(object sender, EventArgs e)
        {
            btnUpdate.Visible = true;
            btnCancel.Visible = true;
            btnEdit.Visible = false;
            txtEmail.Enabled = true;
            txtFName.Enabled = true;
            txtLname.Enabled = true;
            txtGender.Enabled = true;
            txtAge.Enabled = true;
            Label1.Text = "";
        }

        protected void editing(object sender, EventArgs e)
        {
            btnUpdate.Visible = true;
            btnCancel.Visible = true;
            btnEdit.Visible = false;

            txtEmail.Enabled = true;
            txtFName.Enabled = true;
            txtLname.Enabled = true;
            txtGender.Enabled = true;
            txtAge.Enabled = true;
            Label1.Text = "";
        }
    }
}