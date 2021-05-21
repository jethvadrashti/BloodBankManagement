using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class themes_sulfer_premium_BloodBankStock : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=LAPTOP-QAP2FNOR\SQLEXPRESS;Initial Catalog=BloodBankManagement;Integrated Security=True");
    SqlCommand cmd;
    protected void Page_Load(object sender, EventArgs e)
    {
        DataTable dt = new DataTable();
        con.Open();
        cmd = new SqlCommand("select * from BloodStock", con);
        SqlDataAdapter sqlDa = new SqlDataAdapter(cmd);
        sqlDa.Fill(dt);
        if (dt.Rows.Count > 0)
        {
            label1.Text = dt.Rows[0]["A+"].ToString();
            label2.Text = dt.Rows[0]["A-"].ToString();
            label3.Text = dt.Rows[0]["B+"].ToString();
            label4.Text = dt.Rows[0]["B-"].ToString();
            label5.Text = dt.Rows[0]["O+"].ToString();
            label6.Text = dt.Rows[0]["O-"].ToString();
            label7.Text = dt.Rows[0]["AB+"].ToString();
            label8.Text = dt.Rows[0]["AB-"].ToString();
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/themes/sulfer-premium/SignIn.aspx");
    }
}