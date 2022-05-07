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
    public partial class Actor : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
                ListView();
        }

        protected void AaddBtn_Click(object sender, EventArgs e)
        {
            try
            {
                Actor_code p = new Actor_code();
                p.AddActor(ASNametxt.Text, AFNametxt.Text);
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
            string strData = "Select * From Actor Where ActorNumber='" + index + "'";
            SqlDataAdapter da = new SqlDataAdapter(strData, gc.cn);
            DataSet ds = new DataSet();
            da.Fill(ds, "Actor");
            DataTable dt = ds.Tables[0];

            ANumtxt.Text = dt.Rows[0]["ActorNumber"].ToString();
            ASNametxt.Text = dt.Rows[0]["ActorSurname"].ToString();
            AFNametxt.Text = dt.Rows[0]["ActorFirstName"].ToString();
        }
        protected void ListView()
        {
            try
            {
                Actor_code p = new Actor_code();
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

        protected void AresetBtn_Click(object sender, EventArgs e)
        {
            ANumtxt.Text = ASNametxt.Text = AFNametxt.Text = "";
            msg_label.Text = "";
        }

        protected void AupdateBtn_Click(object sender, EventArgs e)
        {
            try
            {
                Actor_code p = new Actor_code();
                p.UpdateActor(Convert.ToInt32(ANumtxt.Text), ASNametxt.Text, AFNametxt.Text);
                msg_label.Text = "Your data is Updated Successfully ";
                ANumtxt.Text = ASNametxt.Text = AFNametxt.Text = "";
                ListView();

            }
            catch (Exception ex)
            {

                msg_label.Text = ex.Message;
            }
        }

        protected void AdeleteBtn_Click(object sender, EventArgs e)
        {
            try
            {
                Actor_code p = new Actor_code();
                p.DeleteActor(Convert.ToInt32(ANumtxt.Text));
                // txtImage.SaveAs(Server.MapPath("~/admin/images/" + txtImage.FileName));

                msg_label.Text = "Your data is deleteted successfully";
                ANumtxt.Text = ASNametxt.Text = AFNametxt.Text = "";
                ListView();

            }
            catch (Exception ex)
            {

                msg_label.Text = ex.Message;
            }
        }
    }
}