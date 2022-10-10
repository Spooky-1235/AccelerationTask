<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="CreateRiskUpdate.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
      <div>
        <h1>Risk Screen</h1>
          <asp:GridView runat="server" ID="GridView2" AutoGenerateColumns="false">
           <Columns>
                 <asp:BoundField   DataField="RiskID"  HeaderText="Risk ID" />
                 <asp:BoundField   DataField="AssignedTo" HeaderText="Assigned To"/>
                 <asp:BoundField   DataField="IssueDescription" HeaderText="Issue Description"/>
                 <asp:BoundField   DataField="IssueStartDate"  HeaderText="Issue StartDate"/>
                 <asp:BoundField   DataField="IssueEndDate"  HeaderText="Issue EndDate"/>
                 <asp:BoundField   DataField="ReasonForDelay"  HeaderText="Reason For Delay"/>
           </Columns>
        </asp:GridView>    
            </div>
        <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Generate Risk Report</asp:LinkButton>
    </form>
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
                margin-left: 20%;
                   margin-top: 15%;
        }
         #form1 h1
        {
          border: 1px solid;
          display: inline-block;
           margin-bottom: auto;
          padding: 2px 310px;
           background-color: burlywood;
        }
          #form1 tbody
        {
            background-color: #9add9d;
        }
          #LinkButton1
          {
                       text-decoration: none;
                   border: 1px solid black;
                  color: black;
                 padding: 7px 5px;
                  border-radius: 21px;
              position: absolute;
                  margin-top: 0px;
          }
           #LinkButton1:hover
     {
            background-color:crimson;
             color: white;
               border:none;


     }
    </style>
</body>
</html>
