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

public partial class frmCancelOrder : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
    string CustId, MovieName, Quantity, Price;
    protected void Page_Load(object sender, EventArgs e)
    {
        data();
    }
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        int i = int.Parse(e.CommandArgument.ToString());
        if (e.CommandName.ToString() == "Delete")
        {
            CustId = GridView1.Rows[i].Cells[1].Text.ToString();
            MovieName = GridView1.Rows[i].Cells[2].Text.ToString();
            Quantity=GridView1.Rows[i].Cells[3].Text.ToString();
            Price = GridView1.Rows[i].Cells[4].Text.ToString();

        }
    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        con.Open();
        SqlCommand cmd = new SqlCommand("delete from Cart where CustId='"+CustId.ToString()+"' and MovieName='"+MovieName.ToString()+"' and Quantity='"+Quantity.ToString()+"' and Price='"+Price.ToString()+"'", con);
        cmd.ExecuteNonQuery();
        con.Close();        
        Response.Write("<script>alert('Order Cancelled Successfully..')</script>");
        data();
    }
    public void data()
    {
        string s = "Ordered";
        con.Open();
        SqlDataAdapter da = new SqlDataAdapter("select CustId,MovieName,Quantity,Price,Status from Cart where CustId='" + Session["CustId"].ToString() + "' and Status='" + s.ToString() + "'", con);
        DataSet ds = new DataSet();
        da.Fill(ds);
        if (ds.Tables[0].Rows.Count > 0)
        {
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }
        else
        {
            Label1.Text = "No Order is Available for Cancel";
            GridView1.Visible = false;
        }
        con.Close();
    }
       
}
