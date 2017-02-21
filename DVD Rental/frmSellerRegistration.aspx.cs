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

public partial class frmSellerRegistration : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnRegister_Click(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand cmd = new SqlCommand("insert into SellerReg values('"+txtFirstName.Text+"','"+txtLastName.Text+"','"+txtEmail.Text+"','"+txtId.Text+"','"+txtPwd.Text+"','"+txtAddress.Text+"','"+txtMobile.Text+"')", con);
        cmd.ExecuteNonQuery();
        con.Close();
        Response.Write("<script>alert('Registered Successfully.....')</script>");
        reset();

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        reset();
    }
    public void reset()
    {
        txtMobile.Text = "";
        txtPwd.Text = "";
        txtLastName.Text = "";
        txtFirstName.Text = "";
        txtEmail.Text = "";
        txtAddress.Text = "";
        txtCpwd.Text = "";
        txtId.Text = "";
    }
}
