using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CreateRiskUpdate
{
    public partial class MainForm : System.Web.UI.Page
    {
        SqlCommand cmd = new SqlCommand();
        SqlConnection SQLConn = new SqlConnection();
        protected void Page_Load(object sender, EventArgs e)
        {
            SQLConn.ConnectionString = "Data Source=(localdb)\\MSSQLLocalDB;Initial Catalog= FirstDB;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False";
            SQLConn.Open();

            SqlDataAdapter da = new SqlDataAdapter("select * from newTable  ORDER BY issueID ASC;", SQLConn);
            DataTable dt = new DataTable();
            da.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Clear();
            Response.Buffer = true;
            Response.ContentType = "application/ms-excel";
            Response.AddHeader("content-disposition", "attachment; filename=IssueScreen.xls");
            Response.Charset = "";
            StringWriter sw = new StringWriter();
            HtmlTextWriter htw = new HtmlTextWriter(sw);
            GridView1.RenderControl(htw);
            Response.Output.Write(sw.ToString());
            Response.End();
        }
        public override void VerifyRenderingInServerForm(Control control)
        {

        }
        public override bool EnableEventValidation
        {
            get { return false; }
            set { /* Do nothing */}
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("WebForm1.aspx");
        }
    }
}
