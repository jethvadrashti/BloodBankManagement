using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class themes_sulfer_premium_UserInfo : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=LAPTOP-QAP2FNOR\SQLEXPRESS;Initial Catalog=BloodBankManagement;Integrated Security=True");
    string email1, name, address, url, bg, mobile, weight, height, gender, age;
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
            age = myReader["Age"].ToString();
            name = myReader["Name"].ToString();
            bg = myReader["BloodGroup"].ToString();
            address = myReader["Address"].ToString();
            mobile = myReader["Mobile"].ToString();
            url = myReader["Image"].ToString();
            weight = myReader["Weight"].ToString();
            height = myReader["Height"].ToString();
            gender = myReader["Gender"].ToString();
        }
        Image1.ImageUrl = url;
        Image1.Width = 200;
        Image1.Height = 200;
        txtName.Text = name;
        txtEmail.Text = email1;
        txtMobile.Text = mobile;
        txtAddress.Text = address;
        txtAge.Text = age;
        txtGender.Text = gender;
        txtHeight.Text = height;
        txtWeight.Text = weight;
        txtBg.Text = bg;
        myReader.Close();
        con.Close();
    }
}