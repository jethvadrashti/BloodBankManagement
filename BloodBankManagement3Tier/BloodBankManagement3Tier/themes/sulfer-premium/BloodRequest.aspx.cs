using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class themes_sulfer_premium_BloodRequest : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=LAPTOP-QAP2FNOR\SQLEXPRESS;Initial Catalog=BloodBankManagement;Integrated Security=True");
    string email1, name, address, url, bg, mobile;
    protected void Page_Load(object sender, EventArgs e)
    {
        string email2 = Session["Email"].ToString();
        con.Open();
        SqlCommand cmd1 = new SqlCommand("select * from Registration where Email = @Email", con);
        cmd1.Parameters.AddWithValue("@Email", email2);
        SqlDataReader myReader;
        myReader = cmd1.ExecuteReader();
        while (myReader.Read())
        {
            email1 = myReader["Email"].ToString();

            name = myReader["Name"].ToString();
            bg = myReader["BloodGroup"].ToString();
            address = myReader["Address"].ToString();
            mobile = myReader["Mobile"].ToString();
            url = myReader["Image"].ToString();
        }
     
        txtName.Text = name;
        txtEmail.Text = email1;
        txtMobile.Text = mobile;
        txtAddress.Text = address;
        txtBG.Text = bg;
        con.Close();
    }

    protected void btn_Click(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand cmd2 = new SqlCommand("Insert into RequestBlood values(@Name,@BloodType,@Email,@Address,@Mobile)", con);

        cmd2.Parameters.AddWithValue("@Name", name);
        cmd2.Parameters.AddWithValue("@BloodType", bg);
        cmd2.Parameters.AddWithValue("@Email", email1);
        cmd2.Parameters.AddWithValue("@Address", address);
        cmd2.Parameters.AddWithValue("@Mobile", mobile);
        cmd2.ExecuteNonQuery();
        con.Close();

        ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alert", "alert('Request Added Successfully ...!!!');window.location='Home.aspx';", true);
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/themes/sulfer-premium/SignIn.aspx");
    }
}