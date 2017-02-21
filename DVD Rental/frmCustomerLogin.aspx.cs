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


public partial class frmCustomerLogin : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnLogin_Click(object sender, EventArgs e)
    {
        con.Open();
        SqlDataAdapter da = new SqlDataAdapter("select * from Register where UserID='" + TextBox1.Text + "' and Password='" + TextBox2.Text + "'", con);
        DataSet ds = new DataSet();
        da.Fill(ds);
        if (ds.Tables[0].Rows.Count > 0)
        {
            Session["CustId"] = TextBox1.Text;
            Response.Redirect("frmCustomerHome.aspx");
        }
        else
        {
            Response.Write("<script>alert('Invalid Details..')</script>");
            cleardata();
        }
        con.Close();
    }
    protected void btnClear_Click(object sender, EventArgs e)
    {
        cleardata();
    }
    public void cleardata()
    {
        TextBox1.Text = "";
        TextBox2.Text = "";
    }
}
