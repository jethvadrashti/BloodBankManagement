using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class themes_sulfer_premium_AdminBloodStockUpdate : System.Web.UI.Page
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
        con.Close();
    }

    protected void btnUpdate_Click(object sender, EventArgs e)
    {
        con.Open();
        if (Droupdownlist1.SelectedIndex.Equals(1))
        {
            cmd = new SqlCommand("Update BloodStock SET [A+] = '" + txtQuatity.Text.Trim() + "' ", con);
            cmd.ExecuteNonQuery();
        }
        else if (Droupdownlist1.SelectedIndex.Equals(2))
        {
            cmd = new SqlCommand("Update BloodStock SET [A-] = '" + txtQuatity.Text.Trim() + " '", con);
            cmd.ExecuteNonQuery();
        }
        else if (Droupdownlist1.SelectedIndex.Equals(3))
        {
            cmd = new SqlCommand("Update BloodStock SET [B+] = '" + txtQuatity.Text.Trim() + " '", con);
            cmd.ExecuteNonQuery();
        }
        else if (Droupdownlist1.SelectedIndex.Equals(4))
        {
            cmd = new SqlCommand("Update BloodStock SET [B-] = '" + txtQuatity.Text.Trim() + " '", con);
            cmd.ExecuteNonQuery();
        }
        else if (Droupdownlist1.SelectedIndex.Equals(5))
        {
            cmd = new SqlCommand("Update BloodStock SET [O+] = '" + txtQuatity.Text.Trim() + " '", con);
            cmd.ExecuteNonQuery();
        }
        else if (Droupdownlist1.SelectedIndex.Equals(6))
        {
            cmd = new SqlCommand("Update BloodStock SET [O-] = '" + txtQuatity.Text.Trim() + " '", con);
            cmd.ExecuteNonQuery();
        }
        else if (Droupdownlist1.SelectedIndex.Equals(7))
        {
            cmd = new SqlCommand("Update BloodStock SET [AB+] = '" + txtQuatity.Text.Trim() + " '", con);
            cmd.ExecuteNonQuery();
        }
        else if (Droupdownlist1.SelectedIndex.Equals(8))
        {
            cmd = new SqlCommand("Update BloodStock SET [AB-] = '" + txtQuatity.Text.Trim() + " '", con);
            cmd.ExecuteNonQuery();
        }
        con.Close();
        ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alert", "alert('Request Added Successfully ...!!!');window.location='AdminBloodStockUpdate.aspx';", true);
    }
}