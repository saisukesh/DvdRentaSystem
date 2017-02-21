using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;

public partial class frmRegistration : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnRegister_Click(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand cmd = new SqlCommand("insert into Register values('" + txtFirstName.Text + "','" + txtLastName.Text + "','" + ddlGender.SelectedItem.Text + "','" + txtDob.Text + "','" + txtEmail.Text + "','" + txtId.Text + "','" + txtPwd.Text + "','" + txtAddress.Text + "','" + txtMobile.Text + "')", con);
        cmd.ExecuteNonQuery();
        Response.Write("<script>alert('Registered Successfully.....')</script>");
        con.Close();
        cleardata();
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        cleardata();
    }
    public void cleardata()
    {
        txtFirstName.Text = "";
        txtId.Text = "";
        txtLastName.Text = "";
        txtMobile.Text = "";        
        txtPwd.Text = "";
        txtAddress.Text = "";
        txtCpwd.Text = "";
        txtDob.Text = "";
        txtEmail.Text = "";
        ddlGender.SelectedIndex = -1;
    }
}
