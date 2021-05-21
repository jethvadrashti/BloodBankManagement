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

public partial class themes_sulfer_premium_SignIn : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    

    protected void btnLogin_Click1(object sender, EventArgs e)
    {

        {
            #region Local Variable
            string connetionString = ConfigurationManager.ConnectionStrings["BloodGroup"].ConnectionString;
            string strErrorMessage = "";
            SqlString strEmail = SqlString.Null;
            SqlString strPassword = SqlString.Null;

            #endregion Local Variable
            #region Serverside Validation
            if (txtEmail.Text.Trim() == "")
            {
                strErrorMessage = txtEmail.Text.Trim();
            }
            if (txtPassword.Text.Trim() == "")
            {
                strErrorMessage = txtPassword.Text.Trim();
            }
            if (strErrorMessage != "")
            {
                lblErrorMessage.Text = strErrorMessage;
                return;
            }
            if (txtEmail.Text != " ")
            {
                strEmail = txtEmail.Text.Trim();
            }
            if (txtPassword.Text != " ")
            {
                strPassword = txtPassword.Text.Trim();
            }
            #endregion Data Read

            #region Check Valid
            using (SqlConnection objConn = new SqlConnection(connetionString))
            {
                try
                {
                    Session["Email"] = txtEmail.Text;
                    if (objConn.State != ConnectionState.Open)
                    {
                        objConn.Open();
                    }
                    using (SqlCommand objCmd = objConn.CreateCommand())
                    {
                        objCmd.CommandType = CommandType.StoredProcedure;
                        objCmd.CommandText = "PR_Registration_LoginbyEmailPassword";
                        objCmd.Parameters.Add("@Email", SqlDbType.VarChar).Value = strEmail;
                        objCmd.Parameters.Add("@Password", SqlDbType.VarChar).Value = strPassword;
                        using (SqlDataReader objSDR = objCmd.ExecuteReader())
                        {

                            if (objSDR.Read())
                            {
                                lblErrorMessage.Text = "Valid User";
                                if (strEmail == "admin@gmail.com")
                                {
                                    Response.Redirect("~/themes/sulfer-premium/Admin.aspx");
                                }
                                else
                                {
                                    Response.Redirect("~/themes/sulfer-premium/Home.aspx");
                                }
                            }
                            else
                            {
                                lblErrorMessage.Text = "Invalid User";
                            }

                        }
                    }
                }

                catch (Exception ex)
                {
                    lblErrorMessage.Text = ex.Message;
                }
                finally
                {
                    if (objConn.State == ConnectionState.Open)
                    {
                        objConn.Close();
                    }
                }
            }
            #endregion Check Valid


        }
    }
}