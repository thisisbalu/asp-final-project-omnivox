<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="readmessage.aspx.cs" Inherits="WebCsAdoOmnivox.readmessage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="lib/twitter-bootstrap/css/bootstrap.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            text-align: left;
        }

        .auto-style2 {
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style2">
            <div>
                <h1 class="auto-style2 display-3">THE MESSAGE PAGE</h1>
            </div>
            <div class="auto-style1">
                <asp:Table ID="tabMessage" runat="server" CssClass="table table-primary mt-4" Width="528px" align="center">
                    <asp:TableRow runat="server">
                        <asp:TableCell ID="clTit1" runat="server" Width="25%">Title :</asp:TableCell>
                        <asp:TableCell ID="celTitle" runat="server"></asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow runat="server">
                        <asp:TableCell ID="celDate1" runat="server">Date :</asp:TableCell>
                        <asp:TableCell ID="celDate" runat="server"></asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow runat="server">
                        <asp:TableCell ID="TableCell1" runat="server" Width="25%">From :</asp:TableCell>
                        <asp:TableCell ID="celSender" runat="server"></asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow runat="server">
                        <asp:TableCell ID="TableCell3" runat="server" VerticalAlign="Top">Message :</asp:TableCell>
                        <asp:TableCell ID="celMessage" runat="server"></asp:TableCell>
                    </asp:TableRow>
                </asp:Table>
            </div>
            <asp:Button ID="btnBack2Msg" runat="server" CssClass="btn btn-primary mt-5" OnClick="btnBack2Msg_Click" Text="Back To Inbox" />
        </div>
    </form>
</body>
</html>
