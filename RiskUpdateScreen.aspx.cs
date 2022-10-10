using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CreateRiskUpdate
{
    public partial class RiskUpdateScreen : System.Web.UI.Page
    {
        SqlCommand cmd = new SqlCommand();
        SqlConnection SQLConn = new SqlConnection();
        protected void Page_Load(object sender, EventArgs e)
        {
            SQLConn.ConnectionString = "Data Source=(localdb)\\MSSQLLocalDB;Initial Catalog= FirstDB;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False";
            SQLConn.Open();

            SqlCommand cmd = new SqlCommand("select IssueID,AssignedTo,IssueDescription,IssueStartDate,IssueEndDate from newTable where IssueID =" + Request.QueryString["IssueID"]);
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            cmd.Connection = SQLConn;
            DataSet ds = new DataSet(); 
            da.Fill(ds);
            if (ds.Tables[0].Rows.Count > 0)
            {
                TextBox1.Text = ds.Tables[0].Rows[0]["IssueID"].ToString();
                TextBox2.Text = ds.Tables[0].Rows[0]["AssignedTo"].ToString();
                Area4.InnerText = ds.Tables[0].Rows[0]["IssueDescription"].ToString();
                StartDate.Value = ds.Tables[0].Rows[0]["IssueStartDate"].ToString();
                EndDate.Value = ds.Tables[0].Rows[0]["IssueEndDate"].ToString();
           
            }
        
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Label1.Text = "";
            SqlCommand cmd = new SqlCommand("Insert  into RiskUpdateTable" + "(AssignedTo,IssueDescription,IssueStartDate,IssueEndDate,ReasonForDelay)Values(@AssignedTo,@IssueDescription,@IssueStartDate,@IssueEndDate,@ReasonForDelay)", SQLConn);
            cmd.Parameters.AddWithValue("@AssignedTo", TextBox2.Text);
            cmd.Parameters.AddWithValue("@IssueDescription", Area4.InnerText);
            cmd.Parameters.AddWithValue("@IssueStartDate", StartDate.Value);
            cmd.Parameters.AddWithValue("@IssueEndDate", EndDate.Value);
            cmd.Parameters.AddWithValue("@ReasonForDelay", Area1.InnerText);
            
            cmd.ExecuteNonQuery();

            if (cmd.Parameters.Count > 0)
            {
                Label1.Visible = true;
                Label1.Text = "Data Saved Successfully";
                Label1.ForeColor = System.Drawing.Color.Green;

            }
            else
            {
                Label1.Text = "Invalid Input";
                Label1.ForeColor = System.Drawing.Color.Red;
            }
            SQLConn.Close();

        }
    }
}