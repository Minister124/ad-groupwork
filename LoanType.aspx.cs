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
    public partial class LoanType : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
                ListView();
        }

        protected void LaddBtn_Click(object sender, EventArgs e)
        {
            try
            {
                LoanType_Code p = new LoanType_Code();
                p.AddLoanType(LTtxt.Text, LDtxt.Text);
                msg_label.Text = "Inserted";
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
            string strData = "Select * From LoanType Where LoanTypeNumber='" + index + "'";
            SqlDataAdapter da = new SqlDataAdapter(strData, gc.cn);
            DataSet ds = new DataSet();
            da.Fill(ds, "LoanType");
            DataTable dt = ds.Tables[0];

            LTNtxt.Text = dt.Rows[0]["LoanTypeNumber"].ToString();
            LTtxt.Text = dt.Rows[0]["LoanType"].ToString();
            LDtxt.Text = dt.Rows[0]["LoanDuration"].ToString();
        }
        protected void LresetBtn_Click(object sender, EventArgs e)
        {
            LTNtxt.Text = LTtxt.Text = LDtxt.Text = "";
            msg_label.Text = "";
            msg_label.Text = "";
        }
        protected void ListView()
        {
            try
            {
                LoanType_Code p = new LoanType_Code ();
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

        protected void LdeleteBtn_Click(object sender, EventArgs e)
        {
            try
            {
                LoanType_Code p = new LoanType_Code();
                p.DeleteLoanType(Convert.ToInt32(LTNtxt.Text));
                // txtImage.SaveAs(Server.MapPath("~/admin/images/" + txtImage.FileName));

                msg_label.Text = "Your data is deleteted successfully";
                LTNtxt.Text = LTtxt.Text = LDtxt.Text = "";
                ListView();

            }
            catch (Exception ex)
            {

                msg_label.Text = ex.Message;
            }
        }

        protected void LupdateBtn_Click(object sender, EventArgs e)
        {
            try
            {
                LoanType_Code p = new LoanType_Code();
                p.UpdateLoanType(Convert.ToInt32(LTNtxt.Text), LTtxt.Text, LDtxt.Text);
                msg_label.Text = "Your data is Updated Successfully ";
                LTNtxt.Text = LTtxt.Text = LDtxt.Text =  "";
                ListView();

            }
            catch (Exception ex)
            {

                msg_label.Text = ex.Message;
            }
        }
    }
}