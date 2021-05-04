<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="compose.aspx.cs" Inherits="WebCsAdoOmnivox.compose" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="lib/twitter-bootstrap/css/bootstrap.css" rel="stylesheet" />

    <style type="text/css">
        .auto-style1 {
            width: 895px;
        }

        .auto-style2 {
            width: 476px;
        }

        .auto-style3 {
            width: 215px;
            vertical-align: top;
        }

        .auto-style4 {
            width: 94px;
            vertical-align: top;
        }
        .auto-style6 {
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1 class="auto-style6 display-3">COMPOSE MAIL</h1>
        </div>
        <div>
            <table align="center" class="auto-style1">
                <tr class="mt-4">
                    <td class="auto-style4">Send to : </td>
                    <td class="auto-style2">
                        <asp:DropDownList ID="cboReceivers" runat="server" Width="500px" CssClass=" dropdown">
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style3">&nbsp;</td>
                </tr>
                <tr class="mt-4">
                    <td class="auto-style4">Title :</td>
                    <td class="auto-style2">
                        <asp:TextBox CssClass="form-control" ID="txtTitle" runat="server" Width="500px"></asp:TextBox>
                    </td>
                    <td class="auto-style3">
                        <asp:RequiredFieldValidator ID="reqTitle" runat="server" ControlToValidate="txtTitle" ErrorMessage="Please the title is required" ForeColor="Red">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">Message : </td>
                    <td class="auto-style2">
                        <asp:TextBox ID="txtMessage" runat="server" CssClass="form-control" Height="300px" TextMode="MultiLine" Width="500px"></asp:TextBox>
                    </td>
                    <td class="auto-style3">
                        <asp:RequiredFieldValidator ID="reqMessage" runat="server" ControlToValidate="txtMessage" ErrorMessage="Please, a text message is required" ForeColor="Red">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style2">
                        <asp:Button ID="btnSend" CssClass="btn btn-danger" runat="server" Text="Send Now" OnClick="btnSend_Click" />
                    </td>
                    <td class="auto-style3">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style2">
                        <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" />
                    </td>
                    <td class="auto-style3">&nbsp;</td>
                </tr>
            </table>


        </div>
    </form>
</body>
</html>
