<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Test.aspx.cs" Inherits="_3LayerArchitechture.Test" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Student Information</title>
    <style type="text/css">
        .auto-style1 {
            font-size: x-large;
            text-align: center;
        }
        .auto-style2 {
            width: 28%;
        }
        .auto-style4 {
            width: 48px;
            text-align: center;
        }
        .auto-style5 {
            width: 259px;
            text-align: center;
        }
        .auto-style6 {
            text-align: left;
            width: 137px;
        }
        .auto-style7 {
            margin-left: 0px;
        }
        .auto-style8 {
            text-decoration: underline;
            color: #0000FF;
        }
        .auto-style9 {
            color: #003300;
        }
        .auto-style10 {
            text-decoration: underline;
        }
    </style>
</head>
<body>

    <form id="form1" runat="server">
        <asp:ScriptManager ID ="scriptMgr" runat="server"></asp:ScriptManager>
        <asp:UpdatePanel ID="updatePanel1" runat="server">
            <ContentTemplate>
    <div class="auto-style1">
    
            
        <strong><span class="auto-style8">Welcome to my WebSite.</span><br />
        </strong>

    </div>
                <div class="auto-style9">

                    <strong><span class="auto-style10">Add, Update or Delete Studnet Record<br />
                    <br />
                    </span>
                    <br />
                    </strong>

                </div>

        <div>

            <table class="auto-style2">
                <tr>
                    <td class="auto-style6"><strong>
                        <asp:Label ID="Label2" runat="server" Text="ID"></asp:Label>
                        </strong></td>
                    <td class="auto-style4"><strong>:</strong></td>
                    <td class="auto-style5">
                        <asp:TextBox ID="txtID" runat="server" Width="150px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6"><strong>
                        <asp:Label ID="Label3" runat="server" Text="Name"></asp:Label>
                        </strong></td>
                    <td class="auto-style4"><strong>:</strong></td>
                    <td class="auto-style5"><strong>
                        <asp:TextBox ID="txtName" runat="server" Width="150px"></asp:TextBox>
                        </strong></td>
                </tr>
                <tr>
                    <td class="auto-style6"><strong>
                        <asp:Label ID="Label4" runat="server" Text="Gender"></asp:Label>
                        </strong></td>
                    <td class="auto-style4"><strong>:</strong></td>
                    <td class="auto-style5"><strong>
                        <asp:TextBox ID="txtGender" runat="server" Width="150px"></asp:TextBox>
                        </strong></td>
                </tr>
                <tr>
                    <td class="auto-style6"><strong>
                        <asp:Label ID="Label5" runat="server" Text="Age"></asp:Label>
                        </strong></td>
                    <td class="auto-style4"><strong>:</strong></td>
                    <td class="auto-style5"><strong>
                        <asp:TextBox ID="txtAge" runat="server" Width="150px"></asp:TextBox>
                        </strong></td>
                </tr>
                <tr>
                    <td class="auto-style6">
                        <asp:Button ID="btnInsert" runat="server" Text="Insert" Width="70px" OnClick="btnInsert_Click" />
                    </td>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style5">
                        <asp:Button ID="btnUpdate" runat="server" CssClass="auto-style7" Text="Update" Width="70px" OnClick="btnUpdate_Click" style="height: 26px" />
&nbsp;&nbsp;
                        <asp:Button ID="btnDelete" runat="server" OnClick="btnDelete_Click" Text="Delete" Width="70px" />
                    </td>
                </tr>
            </table>
            <br />
            <br />
            <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" OnRowDeleting="GridView1_RowDeleting" OnRowUpdating="GridView1_RowUpdating">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <EditRowStyle BackColor="#999999" />
                <EmptyDataTemplate>
                    No Record Availavle.
                </EmptyDataTemplate>
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#E9E7E2" />
                <SortedAscendingHeaderStyle BackColor="#506C8C" />
                <SortedDescendingCellStyle BackColor="#FFFDF8" />
                <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
            </asp:GridView>
            <br />
            <br />
            <br />
            <br />
            <asp:Label ID="state" runat="server"></asp:Label>

        </div>

             </ContentTemplate>
    </asp:UpdatePanel>
            
   </form>
    
</body>
</html>
