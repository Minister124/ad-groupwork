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
    public partial class Studio : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
                ListView();
        }

        protected void SaddBtn_Click(object sender, EventArgs e)
        {
            try
            {
                Studio_Code p = new Studio_Code();
                p.AddStudio(SNametxt.Text);
                msg_label.Text = "Ypur data is successfully Inserted :)";
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
            string strData = "Select * From Studio Where StudioNumber='" + index + "'";
            SqlDataAdapter da = new SqlDataAdapter(strData, gc.cn);
            DataSet ds = new DataSet();
            da.Fill(ds, "Studio");
            DataTable dt = ds.Tables[0];

            SNumtxt.Text = dt.Rows[0]["StudioNumber"].ToString();
            SNametxt.Text = dt.Rows[0]["StudioName"].ToString();
        }
        protected void ListView()
        {
            try
            {
                Studio_Code p = new Studio_Code();
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

        protected void SresetBtn_Click(object sender, EventArgs e)
        {
            SNumtxt.Text = 
            SNametxt.Text = "";
            msg_label.Text = "";
        }

        protected void sUpdate_Click(object sender, EventArgs e)
        {
            try
            {
                Studio_Code p = new Studio_Code();
                p.UpdateStudio(Convert.ToInt32(SNumtxt.Text), SNametxt.Text);
                msg_label.Text = "Your data is Updated Successfully ";
                SNumtxt.Text = SNametxt.Text = "";
                ListView();

            }
            catch (Exception ex)
            {

                msg_label.Text = ex.Message;
            }

        }

        protected void SdeleteBtn_Click(object sender, EventArgs e)
        {
            try
            {
                Studio_Code p = new Studio_Code();
                p.DeleteStudio(Convert.ToInt32(SNumtxt.Text));
                // txtImage.SaveAs(Server.MapPath("~/admin/images/" + txtImage.FileName));

                msg_label.Text = "Your data is deleteted successfully";
                SNumtxt.Text = SNametxt.Text =  "";
                ListView();

            }
            catch (Exception ex)
            {

                msg_label.Text = ex.Message;
            }
        }
    }
}