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
using System.IO;

public partial class frmListofVideos : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
    string mimage;
    protected void Page_Load(object sender, EventArgs e)
    {
        con.Open();
        SqlDataAdapter da = new SqlDataAdapter("select * from Videos where MovieName='" + Session["Movie"].ToString() + "'", con);
        DataSet ds = new DataSet();
        da.Fill(ds);
        if (ds.Tables[0].Rows.Count > 0)
        {
            dlVideo.DataSource = ds.Tables[0];
            dlVideo.DataBind();
        }
        else
        {
            Response.Write("<script>alert('Movie Not Available..')</script>");
        }
        lblMname.Text = ds.Tables[0].Rows[0]["MovieName"].ToString();
        lblDesc.Text = ds.Tables[0].Rows[0]["Description"].ToString();
        lblPrice.Text = ds.Tables[0].Rows[0]["Price"].ToString();
        mimage = ds.Tables[0].Rows[0]["CoverPage"].ToString();
        con.Close();
        
        
    }
    protected void btnAdd_Click(object sender, EventArgs e)
    {
        con.Open();
        string s = "Selected";
        string qut="1";
        SqlDataAdapter da = new SqlDataAdapter("select * from Cart where CustId='" + Session["CustId"].ToString() + "' and MovieName='"+lblMname.Text+"' and Status='" + s.ToString() + "'", con);
        DataSet ds = new DataSet();
        da.Fill(ds);
        if(ds.Tables[0].Rows.Count>0)
        {
           Response.Write("<script>alert('Movie Already Added in Cart..')</script>");
        }         
        else
        {
            SqlCommand cmd = new SqlCommand("insert into Cart values('" + Session["CustId"].ToString() + "','" + mimage.ToString() + "','" + lblMname.Text + "','" + lblDesc.Text + "','" + qut.ToString() + "','" + lblPrice.Text + "','" + s.ToString() + "')", con);
            cmd.ExecuteNonQuery();
            Response.Write("<script>alert('Successfully Added..')</script>");
        }     
        
        con.Close();
    }
    protected void btnContinue_Click(object sender, EventArgs e)
    {
        Response.Redirect("frmVideos.aspx");
    }
}
