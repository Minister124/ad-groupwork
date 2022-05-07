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
    public partial class DVDCategory : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
                ListView();
        }

        protected void DaddBtn_Click(object sender, EventArgs e)
        {
            try
            {
                DVDCategory_Code p = new DVDCategory_Code();
                p.AddDVDCategory(DCDtxt.Text, ARDP.Text);
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
            string strData = "Select * From DVDCategory Where CategoryNumber='" + index + "'";
            SqlDataAdapter da = new SqlDataAdapter(strData, gc.cn);
            DataSet ds = new DataSet();
            da.Fill(ds, "DVDCategory");
            DataTable dt = ds.Tables[0];

            DCNtxt.Text = dt.Rows[0]["CategoryNumber"].ToString();
            DCDtxt.Text = dt.Rows[0]["CategoryDescription"].ToString();
            ARDP.Text = dt.Rows[0]["AgeRestricted"].ToString();
        }
        protected void ListView()
        {
            try
            {
                DVDCategory_Code p = new DVDCategory_Code();
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

        protected void DresetBtn_Click(object sender, EventArgs e)
        {
            DCNtxt.Text = DCDtxt.Text = ARDP.Text = "";
            msg_label.Text = "";
        }

        protected void DupdateBtn_Click(object sender, EventArgs e)
        {
            try
            {
                DVDCategory_Code p = new DVDCategory_Code();
                p.UpdateDVDCategory(Convert.ToInt32(DCNtxt.Text), DCDtxt.Text, ARDP.Text);
                msg_label.Text = "Your data is Updated Successfully ";
                DCNtxt.Text = DCDtxt.Text = ARDP.Text = "";
                ListView();

            }
            catch (Exception ex)
            {

                msg_label.Text = ex.Message;
            }
        }

        protected void DdeleteBtn_Click(object sender, EventArgs e)
        {
            try
            {
                DVDCategory_Code p = new DVDCategory_Code();
                p.DeleteDVDCategory(Convert.ToInt32(DCNtxt.Text));
                // txtImage.SaveAs(Server.MapPath("~/admin/images/" + txtImage.FileName));

                msg_label.Text = "Your data is deleteted successfully";
                DCNtxt.Text = DCDtxt.Text = ARDP.Text = "";
                ListView();

            }
            catch (Exception ex)
            {

                msg_label.Text = ex.Message;
            }
        }
    }
}