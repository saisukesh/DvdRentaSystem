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
using System.IO;
using System.Data.SqlClient;

public partial class frmMovieDetails : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);

    protected void Page_Load(object sender, EventArgs e)
    {
        //string s= Server.MapPath(@"Video\") + Session["Image"].ToString();
        //Image2.ImageUrl = Server.MapPath(@"Video\") + Session["Image"].ToString();
        Label1.Text=Session["Name"].ToString();
        Label2.Text=Session["Desc"].ToString();
        Label3.Text = Session["Price"].ToString();
    }

    protected void btnAdd_Click(object sender, EventArgs e)
    {
        con.Open();
        string s = "Selected";
        SqlCommand cmd = new SqlCommand("insert into Cart values('" + Session["CustId"].ToString() + "','" + Session["Image"].ToString() + "','" + Session["Name"].ToString() + "','" + Session["Desc"].ToString() + "','" + Session["Price"].ToString() + "','"+s.ToString()+"')", con);
        cmd.ExecuteNonQuery();
        Response.Write("<script>alert('Successfully Added..')</script>");
        con.Close();
    }
}
