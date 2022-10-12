<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RiskUpdateScreen.aspx.cs" Inherits="CreateRiskUpdate.RiskUpdateScreen" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <h1>Risk Update Screen</h1>
      <p>Risk Id</p>
        <asp:TextBox ID="TextBox1" runat="server" ReadOnly="true"></asp:TextBox>

        <p>Assigned To</p>
        <asp:TextBox ID="TextBox2" runat="server" ReadOnly="true"></asp:TextBox>

        <p>Risk Description</p>
        <textarea id="Area4" cols="22" rows="3" runat="server" readonly="readonly" ></textarea>

        <p>Risk Start Date</p>
          <input type="datetime" id="StartDate" runat="server" readonly="true"/>

         <p>Risk End Date</p>
          <input type="datetime" id="EndDate" runat="server" readonly="true"/>

        <p>Reason For Delay</p>
        <textarea id="Area1" cols="22" rows="3" runat="server"></textarea>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*Please Enter Input Details" ControlToValidate="Area1"></asp:RequiredFieldValidator>
        <br />
          <br />
        <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click"/>
         <input type="reset" id="reset" runat="server" />
        <br />
        <br />
         <asp:Label ID="Label1" runat="server"  Visible="false"></asp:Label>
         <br />
    </form>
    <a  class="link2" href="WebForm2.aspx">Go to Risk Screen</a>
    <br />
    
    <style>
         body,html
        {
            margin:0px;
            padding:0px;
            overflow:hidden;
        }
         #TextBox1
        {
            background: no-repeat;
            border-radius: 5px;
            border: 1px solid black;
            padding: 4px 0px;
            padding-left: 4px;
        }
         #TextBox2
         {
               background: no-repeat;
            border-radius: 5px;
            border: 1px solid black;
            padding: 8px 0px;
            padding-left: 4px;
         }
         #Area4
         {
            background: no-repeat;
            border: 1px solid black;
            padding-left: 6px;
            border-radius: 9px;
            width: 171px;
            height: 56px;
            padding-top: 6px;
            overflow: hidden;
         }
         #form1 h1
        {
            color: crimson;
        }
         #Area1
         {
            background: no-repeat;
            border: 1px solid black;
            padding-left: 6px;
            border-radius: 9px;
            width: 171px;
            height: 56px;
            padding-top: 6px;
            overflow: hidden;
         }
        body {
            background: url(../cool-background.png);
         
        }
        #RequiredFieldValidator2
        {
            color:red;
        }
        #form1
        {
          margin-left: 42%;
        }
        #StartDate
        {
             background: no-repeat;
            border: 1px solid;
            border-radius: 5px;
            padding: 4px 6px;
        }
        #EndDate
        {
             background: no-repeat;
            border: 1px solid;
            border-radius: 5px;
            padding: 4px 6px;
        }
        .link2
        {
            margin-left: 42%;
          text-decoration: none;
          color: blue;
        }
         #Button1
        {
                  background: no-repeat;
                 border: 1px solid;
                  border-radius: 11px;
                  padding: 3px 17px;
        }
        #Button1:hover
        {
            background-color:crimson;
            color:white;
            border:none;
            height: 25px;
            width: 77px;
        }
        #reset
        {
                 background: no-repeat;
                 border: 1px solid;
                 border-radius: 11px;
                 padding: 3px 20px;
        }
       #reset:hover 
       {
            background-color:crimson;
            color:white;
            border:none;
            height: 25px;
            width: 77px;

       }
    </style>
</body>
</html>
