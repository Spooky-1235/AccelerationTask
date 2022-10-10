using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CreateRiskUpdate
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        SqlCommand cmd = new SqlCommand();
        SqlConnection SQLConn = new SqlConnection();
        protected void Page_Load(object sender, EventArgs e)
        {
            SQLConn.ConnectionString = "Data Source=(localdb)\\MSSQLLocalDB;Initial Catalog= FirstDB;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False";
            SQLConn.Open();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Label1.Text = "";
            SqlCommand cmd = new SqlCommand("Insert Into newTable" + "(AssignedTo,IssueDescription,IssueStartDate,IssueEndDate)values(@AssignedTo,@IssueDescription,@IssueStartDate,@IssueEndDate)", SQLConn);
            cmd.Parameters.AddWithValue("@AssignedTo", TextBox1.Text);
            cmd.Parameters.AddWithValue("@IssueDescription", Area2.InnerText);
            cmd.Parameters.AddWithValue("@IssueStartDate", Date1.Value);
            cmd.Parameters.AddWithValue("@IssueEndDate", Date2.Value);
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
            //DataTable dt = new DataTable();
            //SQLAdapter.Fill(dt);
            ClearForm();

        }






        protected void ClearForm()
        {
            TextBox1.Text = string.Empty;
            Area2.InnerText = string.Empty;
            Date1.Value = String.Empty;
            Date2.Value = String.Empty;

            //Clear other form fields
        }

    
    }
}