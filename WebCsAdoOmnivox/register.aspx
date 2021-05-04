<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="WebCsAdoOmnivox.register" %>

<!DOCTYPE html>



<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="lib/twitter-bootstrap/css/bootstrap.css" rel="stylesheet" />

    <style type="text/css">
        .auto-style1 {
            ​​​​ text-align: center;
        }

        ​​​​
        .auto-style2 {
            ​​​​ width: 498px;
        }

        ​​​​
        .auto-style3 {
            ​​​​ width: 600px;
            background-color: #a4cac8;
            margin-top: 10%;
            border-spacing: 0px 7px;
            font-size: large;
        }

        ​​​​
        .auto-style7 {
            ​​​​ text-align: center;
            display: flex;
        }

        ​​​​


        .auto-style8 {
            ​​​​ width: 243px;
        }

        ​​​​
        .btnRegister {
            ​​​​ margin:auto;
            display: inline-block;
            margin-left: 20px;
            background-color: #fec2a3;
            height: 35px;
            width: 100px;
            cursor: pointer;
            font-size: large;
        }

        ​​​​
        .btnClear {
            ​​​​ margin:auto;
            display: inline-block;
            margin-left: 50px;
            background-color: #fec2a3;
            height: 35px;
            width: 100px;
            cursor: pointer;
            font-size: large;
        }

        ​​​​
        .auto-style9 {
            ​​​​ height: 26px;
        }

        ​​​​
        .auto-style10 {
            ​​​​ width: 243px;
            height: 26px;
        }

        ​​​​
        .auto-style11 {
            ​​​​ height: 23px;
        }

        ​​​​
        .auto-style12 {
            ​​​​ width: 243px;
            height: 23px;
        }

        ​​​​
        .auto-style2 {
            text-align: center;
            width: 501px;
        }

        .auto-style3 {
            text-align: center;
        }

        .auto-style4 {
            text-align: left;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1">



            <h1 class="auto-style3 display-2">MEMBER REGISTRATION</h1>



        </div>
        <hr class="auto-style2" style="width: 516px" />
        <br />
        <table class="auto-style3" align="center">
            <tr>
                <td class="auto-style4">Student Number:</td>
                <td class="auto-style8">
                    <asp:TextBox CssClass="form-control mt-2" ID="txtStudentNumber" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="reqStNumber" runat="server" ControlToValidate="txtStudentNumber" ErrorMessage="Please Enter Student Number" ForeColor="Red">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">Student Full Name: </td>
                <td class="auto-style8">
                    <asp:TextBox CssClass="form-control mt-2" ID="txtName" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style14">
                    <asp:RequiredFieldValidator ID="reqName" runat="server" ControlToValidate="txtName" ErrorMessage="Please enter your name" ForeColor="Red">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">Student Email: </td>
                <td class="auto-style8">
                    <asp:TextBox CssClass="form-control mt-2" ID="txtEmail" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style9">
                    <asp:RequiredFieldValidator ID="reqEmail" runat="server" ControlToValidate="txtEmail" ErrorMessage="Please enter email" ForeColor="Red">*</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="formatEmail" runat="server" ControlToValidate="txtEmail" ErrorMessage="Please check the Email format" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style9" style="text-align: left">Birth Year: </td>
                <td class="auto-style10">
                    <asp:TextBox CssClass="form-control mt-2" ID="txtBirthYear" runat="server" TextMode="Number"></asp:TextBox>
                </td>
                <td class="auto-style10">
                    <asp:RequiredFieldValidator ID="reqYear" runat="server" ControlToValidate="txtBirthYear" ErrorMessage="Please enter the Year of your birth" ForeColor="Red">*</asp:RequiredFieldValidator>
                    <asp:RangeValidator ID="reqRangeYear" runat="server" ControlToValidate="txtBirthYear" ErrorMessage="Your Birth Year is out of range(1990-2010)" ForeColor="Red" MaximumValue="2021" MinimumValue="1990" SetFocusOnError="True" Type="Integer">*</asp:RangeValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">Password: </td>
                <td class="auto-style8">
                    <asp:TextBox CssClass="form-control mt-2" ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
                </td>
                <td class="auto-style8">
                    <asp:RequiredFieldValidator ID="reqPwd1" runat="server" ControlToValidate="txtPassword" ErrorMessage="Please enter the password" ForeColor="Red">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style21">Confirm Password: </td>
                <td class="auto-style8">
                    <asp:TextBox CssClass="form-control mt-2" ID="txtConfirmPassword" runat="server" TextMode="Password"></asp:TextBox>
                </td>
                <td class="auto-style8">
                    <asp:RequiredFieldValidator ID="reqPwd2" runat="server" ControlToValidate="txtConfirmPassword" ErrorMessage="Please Confirm Your Password" ForeColor="Red">*</asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="reqCompPwd" runat="server" ControlToCompare="txtPassword" ControlToValidate="txtConfirmPassword" ErrorMessage="Passwords do not match" ForeColor="Red">*</asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td style="text-align: center" colspan="3">
                    <asp:Button CssClass="btn btn-success mt-5" ID="btnRegister" runat="server" Text="Register" Font-Bold="True" OnClick="btnRegister_Click" />
                    <asp:Button ID="btnClear" runat="server" CssClass="btn btn-success mt-5" Text="Clear" Font-Bold="True" />
                </td>
            </tr>
            <tr>
                <td style="text-align: center" colspan="3">
                    <asp:Label ID="lblError" runat="server" Font-Bold="True" ForeColor="Red"></asp:Label>
                </td>
            </tr>

            <tr>
                <td class="auto-style11" colspan="3">
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" />
                </td>

            </tr>
        </table>
    </form>
    <div>
    </div>
</body>
</html>
