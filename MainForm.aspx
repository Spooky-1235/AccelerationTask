<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MainForm.aspx.cs" Inherits="CreateRiskUpdate.MainForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <h1>Issue Screen</h1>
        <asp:GridView runat="server" ID="GridView1" AutoGenerateColumns="false">
           <Columns>
              
                <asp:HyperLinkField HeaderText="IssueID"
                DataNavigateUrlFields="IssueID" DataTextField="IssueID"
               DataNavigateUrlFormatString="RiskUpdateScreen.aspx?IssueID={0}"/>
                 <asp:BoundField   DataField="AssignedTo" HeaderText="Assigned To"/>
                 <asp:BoundField   DataField="IssueDescription" HeaderText="Issue Description"/>
                 <asp:BoundField   DataField="IssueStartDate"  HeaderText="Issue StartDate"/>
                 <asp:BoundField   DataField="IssueEndDate"  HeaderText="Issue EndDate"/>
           </Columns>                  
        </asp:GridView>   
        <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click">Go To Create Issue Screen</asp:LinkButton>
           <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Generate Issue Report</asp:LinkButton>
    </form>
    <script>
        function myFun()
        {
            window.location.href = "WebForm1.aspx";
        }
    </script>
    <style>
        body, html
        {
            margin:0px;
            padding:0px;
        }
        body
        {
            background:url(../bck2.png);
        }
        #form1
        {

                margin-left: 27%;
                   margin-top: 15%;
        }
        #form1 h1
        {
          border: 1px solid;
          display: inline-block;
           margin-bottom: auto;
           padding: 2px 264px;
           background-color: burlywood;
        }
        #form1 tbody
        {
            background-color: #9add9d;
                text-align: center;
        }
     #LinkButton1
        {
                text-decoration: none;
               margin-left: 41%;
              border: 1px solid black;
              color: black;
            padding: 7px 4px;
               border-radius: 21px;
                   position: absolute;
        }
     #LinkButton1:hover
     {
             color: white;
         background-color:crimson;
          border:none;
     }
     #LinkButton2
     {
         text-decoration: none;
              border: 1px solid black;
              color: black;
              padding: 7px 4px;
               border-radius: 21px;
               position: absolute;
     }
     #LinkButton2:hover
     {
            background-color:crimson;
             color: white;
             border:none;
     }
     #form1 tbody a 
     {
        
    text-decoration: none;
    color: black;
    text-align:center;
     }
    #form1 tbody a:hover
    {
        color:red;
    }

    </style>
</body>
</html>
