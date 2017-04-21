<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="_3LayerArchitechture.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            font-size: xx-large;
            text-align: center;
        }
        .auto-style2 {
            width: 24%;
        }
        .auto-style3 {
            width: 108px;
        }
        .auto-style4 {
            color: #0000FF;
            font-size: large;
        }
        .auto-style5 {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="auto-style1">
        
        <strong><span class="auto-style5">Login</span><br />
        <br />
        </strong></div>
    <div>

        <table align="center" class="auto-style2">
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3"><strong>User Name:</strong></td>
                <td>
                    <asp:TextBox ID="txtUserName" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3"><strong>Password:</strong></td>
                <td>
                    <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" style="width: 47px" />
                    <br />
                    <asp:Label ID="statusLabel" runat="server" Text=""></asp:Label>
                    <br />
                    <asp:HyperLink ID="HyperLink1" runat="server"  NavigateUrl="~/Registration.aspx" CssClass="auto-style4">create an account..</asp:HyperLink>
                    <br />
                </td>
            </tr>
        </table>

    </div>
    </form>
    <p>
        &nbsp;</p>
</body>
</html>
