<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="welcome.aspx.cs" Inherits="WebCsAdoOmnivox.welcome" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }

        .auto-style2 {
        }

        .auto-style3 {
            width: 711px;
        }

        .auto-style4 {
            text-align: left;
        }

        .linkrd {
            margin-right: 15px;
        }
    </style>
    <link href="lib/twitter-bootstrap/css/bootstrap.css" rel="stylesheet" />
</head>
<body class="auto-style2">
    <form id="form1" runat="server">
        <div class="auto-style1">
            <div>
                <h1 class="auto-style1 display-3">WELCOME TO MIO - OMNIVOX</h1>
            </div>
            <hr class="auto-style3" />
            <asp:Literal ID="litInfo" runat="server"></asp:Literal>
            <asp:Button ID="btnCompose" runat="server" CssClass="btn btn-danger" Text="Compose a new message" OnClick="btnCompose_Click" />
            <div class="auto-style4 mt-4">

                <asp:Table ID="tabMessages" CssClass="table table-dark table-hover" runat="server" align="center" Width="901px">
                    <asp:TableRow runat="server">
                        <asp:TableCell runat="server">From :</asp:TableCell>
                        <asp:TableCell runat="server">Titles</asp:TableCell>
                        <asp:TableCell runat="server">Actions</asp:TableCell>
                    </asp:TableRow>
                </asp:Table>

            </div>
        </div>
    </form>
</body>
</html>
