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

public partial class frmAddVideos : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnRegister_Click(object sender, EventArgs e)
    {
        if (FileUpload1.HasFile)
        {
            string strname = FileUpload1.FileName.ToString();
            FileUpload1.PostedFile.SaveAs(Server.MapPath("~/Video/") + strname);
            con.Open();
            string s="insert into Videos values('" + FileUpload1.FileName.ToString() + "','" + txName.Text + "','" + txtDesc.Text + "','" + txtPrice.Text + "')";
            SqlCommand cmd = new SqlCommand(s, con);
            cmd.ExecuteNonQuery();
            Response.Write("<script>alert('New Movie Added Successfully.....')</script>");
            con.Close();
            empty();
        }
        else
        {
            Response.Write("<script>alert('Please Browse Movie Image..')</script>");
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        empty();
    }
    public void empty()
    {
        txName.Text = "";
        txtDesc.Text = "";
        txtPrice.Text = "";

    }
}
