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

public partial class frmQuantity : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            con.Open();
            SqlDataAdapter da = new SqlDataAdapter("select * from Cart where MovieName='" + Session["sel"].ToString() + "'", con);
            DataSet ds = new DataSet();
            da.Fill(ds);
            txtMovie.Text = ds.Tables[0].Rows[0]["MovieName"].ToString();
            txtprice.Text = ds.Tables[0].Rows[0]["Price"].ToString();
            con.Close();
            txtQuantity.Focus();
        }
    }
    protected void btnLogin_Click(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand cmd = new SqlCommand("update Cart set Price='" + txtprice.Text + "',Quantity='"+txtQuantity.Text+"' where MovieName='" + txtMovie.Text + "'", con);
        cmd.ExecuteNonQuery();
        con.Close();
        Response.Redirect("frmViewCart.aspx");
    }
    protected void txtQuantity_TextChanged(object sender, EventArgs e)
    {
        int i = Convert.ToInt32(txtQuantity.Text) * Convert.ToInt32(txtprice.Text);
        txtprice.Text = Convert.ToString(i);
    }
}
