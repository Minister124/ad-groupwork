using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace RopeyDVD
{
    public class LoanType_Code
    {
        GlobalConnection gc = new GlobalConnection();
        public void AddLoanType(string LoanType, string LoanDuration)
        {
            SqlCommand cmd = new SqlCommand("Insert into LoanType(LoanType,LoanDuration)values (@LoanType,@LoanDuration)", gc.cn);
            cmd.Parameters.AddWithValue("@LoanType", LoanType);
            cmd.Parameters.AddWithValue("@LoanDuration", LoanDuration);
            cmd.ExecuteNonQuery();
            gc.cn.Close();

        }
        public DataTable SelectRecords()
        {
            string sql = "SELECT * FROM LoanType";
            SqlDataAdapter sda = new SqlDataAdapter(sql, gc.cn);
            DataSet ds = new DataSet();
            sda.Fill(ds, "LoanType");
            return ds.Tables[0];
        }
        public void DeleteLoanType(int Id)
        {
            SqlCommand cmd = new SqlCommand("Delete from LoanType where LoanTypeNumber=@LoanTypeNumber", gc.cn);
            cmd.Parameters.AddWithValue("@LoanTypeNumber", Id);
            cmd.ExecuteNonQuery();
            gc.cn.Close();
        }
        public void UpdateLoanType(int UserNumber, string LoanType, string LoanDuration)
        {
            SqlCommand cmd = new SqlCommand("Update LoanType set " +
                "LoanType=@LoanType,LoanDuration=@LoanDuration where LoanTypeNumber=@LoanTypeNumber", gc.cn);
            cmd.Parameters.AddWithValue("@LoanType", LoanType);
            cmd.Parameters.AddWithValue("@LoanDuration", LoanDuration);
            cmd.Parameters.AddWithValue("@LoanTypeNumber", UserNumber);
            cmd.ExecuteNonQuery();
            gc.cn.Close();
        }
    }
    public class Actor_code
    {
        GlobalConnection gc = new GlobalConnection();
        public void AddActor(string ActorSurname, string ActorFirstName)
        {
            SqlCommand cmd = new SqlCommand("Insert into Actor(ActorSurname,ActorFirstName)values (@ActorSurname,@ActorFirstName)", gc.cn);
            cmd.Parameters.AddWithValue("@ActorSurname", ActorSurname);
            cmd.Parameters.AddWithValue("@ActorFirstName", ActorFirstName);
            cmd.ExecuteNonQuery();
            gc.cn.Close();

        }
        public DataTable SelectRecords()
        {
            string sql = "SELECT * FROM Actor";
            SqlDataAdapter sda = new SqlDataAdapter(sql, gc.cn);
            DataSet ds = new DataSet();
            sda.Fill(ds, "Actor");
            return ds.Tables[0];
        }
        public void UpdateActor(int ActorNumber, string ActorSurname, string ActorFirstName)
        {
            SqlCommand cmd = new SqlCommand("Update Actor set " +
                "ActorSurname=@ActorSurname,ActorFirstName=@ActorFirstName where ActorNumber=@ActorNumber", gc.cn);
            cmd.Parameters.AddWithValue("@ActorSurname", ActorSurname);
            cmd.Parameters.AddWithValue("@ActorFirstName", ActorFirstName);
            cmd.Parameters.AddWithValue("@ActorNumber", ActorNumber);
            cmd.ExecuteNonQuery();
            gc.cn.Close();
        }
        public void DeleteActor(int Id)
        {
            SqlCommand cmd = new SqlCommand("Delete from Actor where ActorNumber=@ActorNumber", gc.cn);
            cmd.Parameters.AddWithValue("@ActorNumber", Id);
            cmd.ExecuteNonQuery();
            gc.cn.Close();
        }
    }
    public class DVDCategory_Code
    {
        GlobalConnection gc = new GlobalConnection();
        public void AddDVDCategory(string CategoryDescription, string ActorFirstName)
        {
            SqlCommand cmd = new SqlCommand("Insert into DVDCategory(CategoryDescription,AgeRestricted)values (@CategoryDescription,@AgeRestricted)", gc.cn);
            cmd.Parameters.AddWithValue("@CategoryDescription", CategoryDescription);
            cmd.Parameters.AddWithValue("@AgeRestricted", ActorFirstName);
            cmd.ExecuteNonQuery();
            gc.cn.Close();

        }
        public DataTable SelectRecords()
        {
            string sql = "SELECT * FROM DVDCategory";
            SqlDataAdapter sda = new SqlDataAdapter(sql, gc.cn);
            DataSet ds = new DataSet();
            sda.Fill(ds, "DVDCategory");
            return ds.Tables[0];
        }
        public void UpdateDVDCategory(int CategoryNumber, string CategoryDescription, string AgeRestricted)
        {
            SqlCommand cmd = new SqlCommand("Update DVDCategory set " +
                "CategoryDescription=@CategoryDescription,AgeRestricted=@AgeRestricted where CategoryNumber=@CategoryNumber", gc.cn);
            cmd.Parameters.AddWithValue("@CategoryDescription", CategoryDescription);
            cmd.Parameters.AddWithValue("@AgeRestricted", AgeRestricted);
            cmd.Parameters.AddWithValue("@CategoryNumber", CategoryNumber);
            cmd.ExecuteNonQuery();
            gc.cn.Close();
        }
        public void DeleteDVDCategory(int Id)
        {
            SqlCommand cmd = new SqlCommand("Delete from DVDCategory where CategoryNumber=@CategoryNumber", gc.cn);
            cmd.Parameters.AddWithValue("@CategoryNumber", Id);
            cmd.ExecuteNonQuery();
            gc.cn.Close();
        }
    }
    public class MembershipCategory_code
    {
        GlobalConnection gc = new GlobalConnection();
        public void AddMembershipCategory(string MembershipCtegoryDescription, string MembershipCategoryTotalLoan)
        {
            SqlCommand cmd = new SqlCommand("Insert into MembershipCategory(MembershipCtegoryDescription,MembershipCategoryTotalLoan)values (@MembershipCtegoryDescription,@MembershipCategoryTotalLoan)", gc.cn);
            cmd.Parameters.AddWithValue("@MembershipCtegoryDescription", MembershipCtegoryDescription);
            cmd.Parameters.AddWithValue("@MembershipCategoryTotalLoan", MembershipCategoryTotalLoan);
            cmd.ExecuteNonQuery();
            gc.cn.Close();

        }
        public DataTable SelectRecords()
        {
            string sql = "SELECT * FROM MembershipCategory";
            SqlDataAdapter sda = new SqlDataAdapter(sql, gc.cn);
            DataSet ds = new DataSet();
            sda.Fill(ds, "MembershipCategory");
            return ds.Tables[0];
        }
        public void UpdateMembershipCategory(int MembershipCategoryNumber, string MembershipCtegoryDescription, string MembershipCategoryTotalLoan)
        {
            SqlCommand cmd = new SqlCommand("Update MembershipCategory set " +
                "MembershipCtegoryDescription=@MembershipCtegoryDescription,MembershipCategoryTotalLoan=@MembershipCategoryTotalLoan where MembershipCategoryNumber=@MembershipCategoryNumber", gc.cn);
            cmd.Parameters.AddWithValue("@MembershipCtegoryDescription", MembershipCtegoryDescription);
            cmd.Parameters.AddWithValue("@MembershipCategoryTotalLoan", MembershipCategoryTotalLoan);
            cmd.Parameters.AddWithValue("@MembershipCategoryNumber", MembershipCategoryNumber);
            cmd.ExecuteNonQuery();
            gc.cn.Close();
        }
        public void DeleteMembershipCategory(int Id)
        {
            SqlCommand cmd = new SqlCommand("Delete from MembershipCategory where MembershipCategoryNumber=@MembershipCategoryNumber", gc.cn);
            cmd.Parameters.AddWithValue("@MembershipCategoryNumber", Id);
            cmd.ExecuteNonQuery();
            gc.cn.Close();
        }

    }
    public class Producer_Code
    {
        GlobalConnection gc = new GlobalConnection();
        public void AddProducer(string ProducerName)
        {
            SqlCommand cmd = new SqlCommand("Insert into Producer(ProducerName)values (@ProducerName)", gc.cn);
            cmd.Parameters.AddWithValue("@ProducerName", ProducerName);
            cmd.ExecuteNonQuery();
            gc.cn.Close();

        }
        public DataTable SelectRecords()
        {
            string sql = "SELECT * FROM Producer";
            SqlDataAdapter sda = new SqlDataAdapter(sql, gc.cn);
            DataSet ds = new DataSet();
            sda.Fill(ds, "Producer");
            return ds.Tables[0];
        }
        public void UpdateProducer(int ProducerNumber, string ProducerName)
        {
            SqlCommand cmd = new SqlCommand("Update Producer set " +
                "ProducerName=@ProducerName where ProducerNumber=@ProducerNumber", gc.cn);
            cmd.Parameters.AddWithValue("@ProducerName", ProducerName);
            cmd.Parameters.AddWithValue("@ProducerNumber", ProducerNumber);
            cmd.ExecuteNonQuery();
            gc.cn.Close();
        }
        public void DeleteProducer(int Id)
        {
            SqlCommand cmd = new SqlCommand("Delete from Producer where ProducerNumber=@ProducerNumber", gc.cn);
            cmd.Parameters.AddWithValue("@ProducerNumber", Id);
            cmd.ExecuteNonQuery();
            gc.cn.Close();
        }

    }
    public class Studio_Code
    {
        GlobalConnection gc = new GlobalConnection();
        public void AddStudio(string StudioName)
        {
            SqlCommand cmd = new SqlCommand("Insert into Studio(StudioName)values (@StudioName)", gc.cn);
            cmd.Parameters.AddWithValue("@StudioName", StudioName);
            cmd.ExecuteNonQuery();
            gc.cn.Close();

        }
        public DataTable SelectRecords()
        {
            string sql = "SELECT * FROM Studio";
            SqlDataAdapter sda = new SqlDataAdapter(sql, gc.cn);
            DataSet ds = new DataSet();
            sda.Fill(ds, "Studio");
            return ds.Tables[0];
        }
        public void UpdateStudio(int StudioNumber, string StudioName)
        {
            SqlCommand cmd = new SqlCommand("Update Studio set " +
                "StudioName=@StudioName where StudioNumber=@StudioNumber", gc.cn);
            cmd.Parameters.AddWithValue("@StudioNumber", StudioNumber);
            cmd.Parameters.AddWithValue("@StudioName", StudioName);
            cmd.ExecuteNonQuery();
            gc.cn.Close();
        }
        public void DeleteStudio(int Id)
        {
            SqlCommand cmd = new SqlCommand("Delete from Studio where StudioNumber=@StudioNumber", gc.cn);
            cmd.Parameters.AddWithValue("@StudioNumber", Id);
            cmd.ExecuteNonQuery();
            gc.cn.Close();
        }

    }
}