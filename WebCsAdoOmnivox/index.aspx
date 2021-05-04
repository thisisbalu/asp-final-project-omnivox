﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="WebCsAdoOmnivox.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
          .body {
        background-image: url('images/campus.jpg');
        background-repeat: no-repeat;
        background-attachment: fixed;
        width: 100%;
        height: 890px;
        margin-top: 0px;
        margin-bottom: 0px;
        margin-right: 0px;
        float: right;
         overflow-x: hidden;
        }

        .auto-style1 {
            color: #0277ca;
            font-size: 50px;
            width: 30%;
            margin-bottom: 3px;
            height: 37px;
            text-align: center;
            margin-top: 6%;
            margin-left: 10%;
            display: inline;
        }

    

        .auto-style3 {
            margin-top: 100px;
            padding-top: 0px;
            border: 0.3px solid green;
            width: 210px;
            text-align: center;
            margin-right: 25%;
        }

        
    </style>
     <link href="Styles/Style.css" rel="stylesheet"  type="text/css"/>
</head>
<body class="body" style="width: 1710px">
    <div class="login">
        <form id="form1" runat="server" class="form">
            <div class="header">
                <h1 class="auto-style1">
                    <asp:Image ID="imgLogo" runat="server" CssClass="image" Height="85px" Width="108px" DescriptionUrl="~/images/omnivox2.png" ImageUrl="~/images/omnivox2.png" />Omnivox</h1>
                <hr class="auto-style3" />
                <div class="subtitle">LaSalle College - Montréal</div>
            </div>
            <div class="container">
            <div class="auto-style4">
                <asp:Label ID="lblStudent" runat="server" Text="Student number" CssClass="label" Font-Bold="False" Font-Size="Larger" Font-Strikeout="False" ForeColor="#999999"></asp:Label><br />
                <asp:TextBox ID="txtStudentNumber" CssClass="txt" runat="server"></asp:TextBox>
                </div>
                <br /><br />
            <div class="auto-style4">
                <asp:Label ID="lblPassword" runat="server" CssClass="label" Text="Label" Font-Size="Larger" ForeColor="#999999">Password</asp:Label><br />
                <asp:TextBox ID="txtPassword"  CssClass="txt" runat="server" TextMode="Password"></asp:TextBox>
            </div>
                <div  >
                <asp:Button ID="btnLogin" CssClass="btnLogin" runat="server" Text="Log In" Font-Bold="True" OnClick="btnLogin_Click" />
                 </div>
                 <div class="btnLink">
                <asp:LinkButton ID="btnLink" runat="server" class="btn" Font-Bold="True" OnClick="btnLink_Click">First use?</asp:LinkButton>
                 </div>
                <div>
                    <asp:Label ID="lblError" Font-Bold="true" ForeColor="Red" runat="server"></asp:Label>
                </div>
             </div>
        </form>
    </div>
</body>
</html>

