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

public partial class frmVideos : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection(ConfigurationManager.AppSettings["connection"]);

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            BindDataList();
        }
    }
    protected void BindDataList()
    {
        DataSet ds = new DataSet();
        DataTable FromTable = new DataTable();
        conn.Open();
        string que = "Select * from Videos";
        SqlCommand cmd = new SqlCommand(que, conn);
        SqlDataAdapter adp = new SqlDataAdapter(cmd);
        adp.Fill(ds);
        dlVideo.DataSource = ds.Tables[0];
        dlVideo.DataBind();

    }
    
}
