using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Data.SqlTypes;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class themes_sulfer_premium_AdminBloodDonationRequest : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            All_Donor();
        }
    }
    private void DeleteDonor(SqlInt32 Id)
    {
        #region Local Variable
        string ConnectionString = ConfigurationManager.ConnectionStrings["BloodGroup"].ConnectionString;
        #endregion Local Variable

        #region DeleteCountryPart
        using (SqlConnection objConn = new SqlConnection(ConnectionString))
        {
            try
            {
                if (objConn.State != ConnectionState.Open)
                {
                    objConn.Open();
                }
                using (SqlCommand objCmd = objConn.CreateCommand())
                {
                    objCmd.CommandType = CommandType.StoredProcedure;
                    objCmd.CommandText = "PR_DonorRegistration_Delete";
                    objCmd.Parameters.Add("@Id", SqlDbType.Int).Value = Id;
                    objCmd.ExecuteNonQuery();
                    All_Donor();
                }
            }
            catch (SqlException sqlex)
            {
                string answer = sqlex.Message;
            }
            catch (Exception ex)
            {
                string answer = ex.Message;
            }
            finally
            {
                if (objConn.State == ConnectionState.Open)
                {
                    objConn.Close();
                }
            }
        }
        #endregion DeleteCountryPart
    }
    private void All_Donor()
    {
        #region Local Variable
        string connectionString = ConfigurationManager.ConnectionStrings["BloodGroup"].ConnectionString;
        #endregion Local Variable


        using (SqlConnection objConn = new SqlConnection(connectionString))
        {
            try
            {
                if (objConn.State != ConnectionState.Open)
                {
                    objConn.Open();
                }
                using (SqlCommand objCmd = objConn.CreateCommand())
                {
                    objCmd.CommandType = CommandType.StoredProcedure;
                    objCmd.CommandText = "PR_DonorRegistration_all";

                    using (SqlDataReader objSDR = objCmd.ExecuteReader())
                    {
                        if (objSDR.HasRows)
                        {
                            GridView1.DataSource = objSDR;
                            GridView1.DataBind();
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                string answer = ex.Message;
            }
            finally
            {
                if (objConn.State == ConnectionState.Open)
                {
                    objConn.Close();
                }
            }
        }
    }




    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        #region CommandArgument
        if (e.CommandName == "DeleteRecord")
        {
            if (e.CommandArgument != null)
            {
                DeleteDonor(Convert.ToInt32(e.CommandArgument.ToString().Trim()));
            }
        }
        #endregion CommandArgument
    }
    protected void btnSearch_Click(object sender, EventArgs e)
    {
        BloodType();
    }
    private void BloodType()
    {
        #region Local Variable
        string connectionString = ConfigurationManager.ConnectionStrings["BloodGroup"].ConnectionString;
        #endregion Local Variable


        using (SqlConnection objConn = new SqlConnection(connectionString))
        {
            try
            {
                if (objConn.State != ConnectionState.Open)
                {
                    objConn.Open();
                }
                using (SqlCommand objCmd = objConn.CreateCommand())
                {
                    objCmd.CommandType = CommandType.StoredProcedure;
                    objCmd.CommandText = "PR_DonorRegistration_SelectbyBloodDonotation";
                    objCmd.Parameters.Add("@BloodGroup", SqlDbType.VarChar).Value = txtSearch.Text;
                    using (SqlDataReader objSDR = objCmd.ExecuteReader())
                    {
                        if (objSDR.HasRows)
                        {
                            GridView1.DataSource = objSDR;
                            GridView1.DataBind();
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                string answer = ex.Message;
            }
            finally
            {
                if (objConn.State == ConnectionState.Open)
                {
                    objConn.Close();
                }
            }
        }
    }
}
