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
//using Microsoft.SqlServer.Management.Smo;
using Microsoft.SqlServer.Server;
//using Microsoft.SqlServer.Management.Common;
using Microsoft.SqlServer;

public partial class frmAddToCart : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
    int price;
    protected void Page_Load(object sender, EventArgs e)
    {
        databind();
    }
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        int i = int.Parse(e.CommandArgument.ToString());
        if (e.CommandName.ToString() == "Delete")
        {
            Session["MName"] = GridView1.Rows[i].Cells[1].Text.ToString();
        }
        else if (e.CommandName.ToString() == "Select")
        {
            Session["sel"] = GridView1.Rows[i].Cells[1].Text.ToString();
            Response.Redirect("frmQuantity.aspx");
        }
    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        con.Open();
        string str="delete from Cart where MovieName='" + Session["MName"].ToString() + "'";
        SqlCommand cmd = new SqlCommand(str, con);
        cmd.ExecuteNonQuery();
        con.Close();     
        databind();
    }
    public void databind()
    {
        string s = Session["CustId"].ToString();
        string sel = "Selected";
        con.Open();
        SqlDataAdapter da = new SqlDataAdapter("select MovieName,Quantity,Price from Cart where CustId='" + s.ToString() + "' and Status='"+sel.ToString()+"'", con);
        DataSet ds = new DataSet();
        da.Fill(ds);
        if (ds.Tables[0].Rows.Count > 0)
        {
            price = 0;
            for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
            {
                price = price + Convert.ToInt32(ds.Tables[0].Rows[i]["Price"].ToString());
                Label1.Text = Convert.ToString(price);
            }
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }
        else
        {
            GridView1.Visible = false;
            Label1.Visible = false;
            Label2.Visible = false;
            btnProceed.Visible = false;
            lblMsg.Text = "No Item Available in Your Cart";
        }
        con.Close();
    }

    protected void btnProceed_Click(object sender, EventArgs e)
    {
        string ord="Ordered";
        con.Open();
        SqlCommand cmd = new SqlCommand("update Cart set Status='"+ord.ToString()+"' where CustId = '"+Session["CustId"].ToString()+"'", con);
        cmd.ExecuteNonQuery();
        //Response.Redirect("");
        Response.Write("<script>alert('Order Placed Successfully..')</script>");
        con.Close();        
    }
}