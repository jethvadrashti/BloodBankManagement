using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Data.SqlTypes;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class themes_sulfer_premium_SignUp : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        #region Local Variable
        string ConnectionString = ConfigurationManager.ConnectionStrings["BloodGroup"].ConnectionString;
        SqlString strName = SqlString.Null;
        SqlString strEmail = SqlString.Null;
        SqlString strMobile = SqlString.Null;
        SqlString strGender = SqlString.Null;
        SqlString strAge = SqlString.Null;
        SqlString strBloodGroup = SqlString.Null;
        SqlString strWeight = SqlString.Null;
        SqlString strHeight = SqlString.Null;
        SqlString strPassword = SqlString.Null;
        SqlString strAddress = SqlString.Null;
        string strErrorMessage = "";
        string filename;
        #endregion Local Variable

        #region ServerSideValidation
        if (txtName.Text.Trim() == "")
        {
            strErrorMessage += "-Enter Name + <br>";
        }
        if (txtEmail.Text.Trim() == "")
        {
            strErrorMessage += "Enter Email + <br>";
        }
        if (txtMobile.Text.Trim() == "")
        {
            strErrorMessage += "Enter Mobile  +<br>";
        }
        if (ddlAge.SelectedIndex == 0)
        {
            strErrorMessage += "Select Age";
        }
        if (ddlbg.SelectedIndex == 0)
        {
            strErrorMessage += "-Enter BloodGroup + <br>";
        }
        if (txtWeight.Text.Trim() == "")
        {
            strErrorMessage += "-Enter Weight+ <br>";
        }
        if (txtHeight.Text.Trim() == "")
        {
            strErrorMessage += "-Enter Height + <br>";
        }
        if (txtPassword.Text.Trim() == "")
        {
            strErrorMessage += "-Enter Password + <br>";
        }
        if (txtAddress.Text.Trim() == "")
        {
            strErrorMessage += "-Enter Address + <br>";
        }
        if (strErrorMessage.Trim() != "")
        {
            lblRegisterMessage.InnerText = strErrorMessage;
            return;
        }


        #endregion ServerSideValidation
        if (rbMale.Checked)
        {
            strGender = "Male";
        }
        else if (rbFemale.Checked)
        {
            strGender = "Female";
        }
        else if (rbOther.Checked)
        {
            strGender = "Other";
        }
        filename = Path.GetFileName(FileUpload1.PostedFile.FileName);
        FileUpload1.SaveAs(Server.MapPath("~/themes/sulfer-premium/asset/images/" + filename));
        #region Add_User
        using (SqlConnection objConn = new SqlConnection(ConnectionString))
        {
            try
            {
                if (objConn.State != ConnectionState.Open)
                    objConn.Open();

                using (SqlCommand objCmd = objConn.CreateCommand())
                {
                    objCmd.CommandType = CommandType.StoredProcedure;
                    objCmd.CommandText = "PR_Registration_Insert";
                    objCmd.Parameters.AddWithValue("@Name", txtName.Text);
                    objCmd.Parameters.AddWithValue("@Email", txtEmail.Text);
                    objCmd.Parameters.AddWithValue("@Mobile", txtMobile.Text);
                    objCmd.Parameters.AddWithValue("@Gender", strGender);
                    objCmd.Parameters.AddWithValue("@Age", ddlAge.SelectedValue);
                    objCmd.Parameters.AddWithValue("@BloodGroup", ddlbg.SelectedValue);
                    objCmd.Parameters.AddWithValue("@Weight", txtWeight.Text);
                    objCmd.Parameters.AddWithValue("@Height", txtHeight.Text);
                    objCmd.Parameters.AddWithValue("@Image", "Images/" + filename);
                    objCmd.Parameters.AddWithValue("@Password", txtPassword.Text);
                    objCmd.Parameters.AddWithValue("@Address", txtAddress.Text);
                    objCmd.ExecuteNonQuery();
                    lblRegisterMessage.InnerText = "Data Inserted Successfully.";
                    txtName.Text = "";
                    txtEmail.Text = "";
                    txtMobile.Text = "";
                    ddlAge.SelectedIndex = 0;
                    ddlbg.SelectedIndex = 0;
                    txtWeight.Text = "";
                    txtHeight.Text = "";
                    txtPassword.Text = "";
                    txtAddress.Text = "";

                }
            }
            catch (Exception ex)
            {
                lblRegisterMessage.InnerText = ex.Message;
            }
            finally
            {
                if (objConn.State == ConnectionState.Open)
                    objConn.Close();

            }
        }
        #endregion Add_User
    }

    protected void btnCancel_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/themes/sulfer-premium/Home.aspx");
    }

    protected void btnLogin_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/themes/sulfer-premium/SignIn.aspx");
    }
}