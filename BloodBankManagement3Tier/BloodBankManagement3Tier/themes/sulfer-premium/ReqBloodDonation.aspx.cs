using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class themes_sulfer_premium_ReqBloodDonation : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=LAPTOP-QAP2FNOR\SQLEXPRESS;Initial Catalog=BloodBankManagement;Integrated Security=True");
    
    string email, mobile, name, bg, address, url;
    protected void Page_Load(object sender, EventArgs e)
    {
        string email2 = Session["Email"].ToString();
        con.Open();
        SqlCommand selectCommand = new SqlCommand("Select * From Registration where Email = @Email", con);
        selectCommand.Parameters.AddWithValue("@Email", email2);
        SqlDataReader myReader;
        myReader = selectCommand.ExecuteReader();

        while (myReader.Read())
        {
            email = myReader["Email"].ToString();
            mobile = myReader["Mobile"].ToString();
            name = myReader["Name"].ToString();
            bg = myReader["BloodGroup"].ToString();
            address = myReader["Address"].ToString();
            url = myReader["Image"].ToString();
        }
        
        txtName.Text = name;
        txtEmail.Text = email;
        txtMobile.Text = mobile;
        txtAddress.Text = address;
        txtBloodGroup.Text = bg;
        con.Close();
    }

    protected void btnSubmit_Click(object sender, EventArgs e)
    {

        con.Open();
        SqlCommand cmd = new SqlCommand("Insert into DonorRegistration values(@Name,@Email,@Mobile,@BloodGroup,@Address,@Image)", con);
        cmd.Parameters.AddWithValue("@Name", name);
        cmd.Parameters.AddWithValue("@Email", email);
        cmd.Parameters.AddWithValue("@Mobile", mobile);
        cmd.Parameters.AddWithValue("@BloodGroup", bg);
        cmd.Parameters.AddWithValue("@Address", address);
        cmd.Parameters.AddWithValue("@Image", url);

        cmd.ExecuteNonQuery();
        con.Close();
        ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alert", "alert('Request Added Successfully......!!');window,locatoin='Home.aspx';", true);
        Response.Redirect("~/themes/sulfer-premium/Home.aspx");

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/themes/sulfer-premium/SignIn.aspx");
    }
}