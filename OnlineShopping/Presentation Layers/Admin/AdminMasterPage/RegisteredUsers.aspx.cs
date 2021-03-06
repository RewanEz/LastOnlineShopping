﻿using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineShopping.Presentation_Layers.Admin.AdminMasterPage
{
    public partial class RegisteredUsers : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                FillGridView();
            }

        }

        private void FillGridView()
        {
            DataTable dt = new DataTable();
            dt = UserBL.GetAllCurrent();
            GridView1.DataSource = dt;
            GridView1.DataBind();
            if (GridView1.Rows.Count == 0)
                Label1.Text = "No Registered Users";
            ViewState.Add("Mydt", dt);
        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            DataTable dt2 = new DataTable();
            dt2 = ViewState["Mydt"] as DataTable;
            int rowIndex = Convert.ToInt32(e.CommandArgument);
            string orderId = dt2.Rows[rowIndex][0].ToString();
            UserBL.UpdateStatus(int.Parse(orderId), "blocked");
            FillGridView();

        }

        
    }
}