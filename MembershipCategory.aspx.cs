using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RopeyDVD
{
    public partial class MembershipCategory : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
                ListView();
        }

        protected void MaddBtn_Click(object sender, EventArgs e)
        {
            try
            {
                MembershipCategory_code p = new MembershipCategory_code();
                p.AddMembershipCategory(MCDtxt.Text, MCTLtxt.Text);
                msg_label.Text = "Your data is successfully Inserted :)";
            }
            catch (Exception ex)
            {
                msg_label.Text = ex.Message;
            }
        }
        protected void GV_RowCommand(object sender, GridViewCommandEventArgs e)
        {

            GlobalConnection gc = new GlobalConnection();
            SqlCommand cmd = new SqlCommand();
            //cmd.Connection = gc.cn;
            string index = Convert.ToString(e.CommandArgument);
            string strData = "Select * From MembershipCategory Where MembershipCategoryNumber='" + index + "'";
            SqlDataAdapter da = new SqlDataAdapter(strData, gc.cn);
            DataSet ds = new DataSet();
            da.Fill(ds, "MembershipCategory");
            DataTable dt = ds.Tables[0];

            MCNtxt.Text = dt.Rows[0]["MembershipCategoryNumber"].ToString();
            MCDtxt.Text = dt.Rows[0]["MembershipCtegoryDescription"].ToString();
            MCTLtxt.Text = dt.Rows[0]["MembershipCategoryTotalLoan"].ToString();
        }
        protected void ListView()
        {
            try
            {
                MembershipCategory_code p = new MembershipCategory_code();
                GV.DataSource = p.SelectRecords();
                GV.DataBind();
                p = null;
            }
            catch (Exception ex)
            {
                msg_label.Text = ex.Message;
            }
        }
        protected void GV_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void MresetBtn_Click(object sender, EventArgs e)
        {
            MCNtxt.Text =
            MCDtxt.Text =
            MCTLtxt.Text = "";
            msg_label.Text = "";
        }

        protected void MupdateBtn_Click(object sender, EventArgs e)
        {
            try
            {
                MembershipCategory_code p = new MembershipCategory_code();
                p.UpdateMembershipCategory(Convert.ToInt32(MCNtxt.Text), MCDtxt.Text, MCTLtxt.Text);
                msg_label.Text = "Your data is Updated Successfully ";
                MCNtxt.Text = MCDtxt.Text = MCTLtxt.Text = "";
                ListView();

            }
            catch (Exception ex)
            {

                msg_label.Text = ex.Message;
            }
        }

        protected void MdeleteBtn_Click(object sender, EventArgs e)
        {
            try
            {
                MembershipCategory_code p = new MembershipCategory_code();
                p.DeleteMembershipCategory(Convert.ToInt32(MCNtxt.Text));
                msg_label.Text = "Your data is deleteted successfully";
                MCNtxt.Text = MCDtxt.Text = MCTLtxt.Text = "";
                ListView();

            }
            catch (Exception ex)
            {

                msg_label.Text = ex.Message;
            }
        }
    }
}