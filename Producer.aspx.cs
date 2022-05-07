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
    public partial class Producer : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
                ListView();
        }

        protected void PaddBtn_Click(object sender, EventArgs e)
        {
            try
            {
                Producer_Code p = new Producer_Code();
                p.AddProducer(PNametxt.Text);
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
            string strData = "Select * From Producer Where ProducerNumber='" + index + "'";
            SqlDataAdapter da = new SqlDataAdapter(strData, gc.cn);
            DataSet ds = new DataSet();
            da.Fill(ds, "Producer");
            DataTable dt = ds.Tables[0];

            PNumtxt.Text = dt.Rows[0]["ProducerNumber"].ToString();
            PNametxt.Text = dt.Rows[0]["ProducerName"].ToString();
        }
        protected void ListView()
        {
            try
            {
                Producer_Code p = new Producer_Code();
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

        protected void PresetBtn_Click(object sender, EventArgs e)
        {
            PNumtxt.Text =
            PNametxt.Text = "";
            msg_label.Text = "";
        }

        protected void PupdateBtn_Click(object sender, EventArgs e)
        {
            try
            {
                Producer_Code p = new Producer_Code();
                p.UpdateProducer(Convert.ToInt32(PNumtxt.Text), PNametxt.Text);
                msg_label.Text = "Your data is Updated Successfully ";
                PNumtxt.Text = PNametxt.Text = "";
                ListView();

            }
            catch (Exception ex)
            {

                msg_label.Text = ex.Message;
            }

        }

        protected void PdeleteBtn_Click(object sender, EventArgs e)
        {
            try
            {
                Producer_Code p = new Producer_Code();
                p.DeleteProducer(Convert.ToInt32(PNumtxt.Text));

                msg_label.Text = "Your data is deleteted successfully";
                PNumtxt.Text = PNametxt.Text = "";
                ListView();

            }
            catch (Exception ex)
            {

                msg_label.Text = ex.Message;
            }
        }
    }
}