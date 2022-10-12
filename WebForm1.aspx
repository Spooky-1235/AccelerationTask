<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="CreateRiskUpdate.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <h1>Create Issue Screen</h1>
        <p>Assigned To:</p>
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*Please Enter Input Details" ControlToValidate="TextBox1"></asp:RequiredFieldValidator>

        <p>Issue Description:</p>
        <textarea id="Area2" cols="25" rows="3" runat="server"></textarea>
         <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*Please Enter Input Details" ControlToValidate="Area2"></asp:RequiredFieldValidator>

        <p>Issue StartDate:</p>
         <input type="date" id="Date1" runat="server"/>
        <p>Issue EndDate:</p>
         <input type="date" id="Date2" runat="server"/>
        <asp:CompareValidator ID="CompareValidator2" runat="server" ErrorMessage="End Date Should Always be Greater then Start Date"  ControlToCompare="Date1" ControlToValidate="Date2" Operator="GreaterThan" Type="Date"></asp:CompareValidator>
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" /> 
         <input type="reset" id="reset" runat="server" />
            <br />
            <br />
          <asp:Label ID="Label1" runat="server" Visible="false" Text="Label"></asp:Label>
    </form>
    <a class="linkForm1" href ="MainForm.aspx">Go To Issue Screen</a>
    <style>
        body,html
        {
            margin:0px;
            padding:0px;

             
        }
        body
        {
            background:url(../cool-background.png);
        }
        #TextBox1
        {

            background: no-repeat;
            border-radius: 5px;
            border: 1px solid black;
            padding: 8px 0px;
            padding-left: 4px;
        }
        #Area2
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
        #Date1
        {
            background: no-repeat;
            border: 1px solid;
            border-radius: 5px;
            padding: 4px 6px;
        }
         #Date2
        {
                background: no-repeat;
                border: 1px solid;
                border-radius: 5px;
                padding: 4px 6px;
        }
        #form1
        {
          margin-left: 42%;

        }
        #RequiredFieldValidator1
        {
            color:red;
        }
        #RequiredFieldValidator2
        {
             color:red;
        }
        #CompareValidator2
        {
             color:red;
        }
        .linkForm1
        {
          margin-left: 42%;
          text-decoration: none;
          color: blue;
        }
        #form1 h1
        {
            color: crimson;
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
