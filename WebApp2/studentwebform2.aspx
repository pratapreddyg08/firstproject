<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="studentwebform2.aspx.cs" Inherits="WebApp2.studentwebform2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 52px;
            background-color: #00CCFF;
        }
        .auto-style3 {
            background-color: #00CCFF;
        }
        .auto-style4 {
            font-size: x-large;
            text-align: center;
            background-color: #FF00FF;
        }
        .auto-style5 {
            width: 52px;
            height: 26px;
            background-color: #00CCFF;
            text-align: right;
        }
        .auto-style6 {
            height: 26px;
            background-color: #00CCFF;
        }
        .auto-style7 {
            width: 52px;
            text-align: right;
            background-color: #00CCFF;
        }
        .auto-style8 {
            background-color: #66FF99;
        }
        .auto-style9 {
            background-color: #CCFF99;
        }
        .auto-style10 {
            background-color: #FF9900;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <span class="auto-style8">three tier student web app</span><table class="auto-style1">
                <tr>
                    <td class="auto-style4" colspan="8">3Tier WebForm2</td>
                </tr>
                <tr>
                    <td class="auto-style7" colspan="4">
                        <asp:Label ID="Label1" runat="server" Text="ID"></asp:Label>
                    </td>
                    <td class="auto-style3" colspan="4">
                        <asp:TextBox ID="txtid" runat="server" Width="248px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5" colspan="4">
                        <asp:Label ID="Label2" runat="server" Text="NAME"></asp:Label>
                    </td>
                    <td class="auto-style6" colspan="4">
                        <asp:TextBox ID="txtname" runat="server" Width="248px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7" colspan="4">
                        <asp:Label ID="Label3" runat="server" Text="SCHOOL"></asp:Label>
                    </td>
                    <td class="auto-style3" colspan="4">
                        <asp:TextBox ID="txtschool" runat="server" Width="247px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7">
                        <asp:Button ID="btnsave0" runat="server" Text="SAVE" CssClass="auto-style10" OnClick="btnsave_Click" />
                    </td>
                    <td class="auto-style7">&nbsp;</td>
                    <td class="auto-style7">
                        <asp:Button ID="btnupdate" runat="server" CssClass="auto-style10" OnClick="btnupdate_Click" Text="UPDATE" />
                    </td>
                    <td class="auto-style7">&nbsp;</td>
                    <td class="auto-style3">
                        <asp:Button ID="btndelete" runat="server" CssClass="auto-style10" OnClick="btndelete_Click" Text="DELETE" />
                    </td>
                    <td class="auto-style3">
                        &nbsp;</td>
                    <td class="auto-style3">
                        &nbsp;</td>
                    <td class="auto-style3">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2" colspan="4">&nbsp;</td>
                    <td class="auto-style3" colspan="4">
                        <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4">
                            <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
                            <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
                            <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
                            <RowStyle BackColor="White" ForeColor="#003399" />
                            <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                            <SortedAscendingCellStyle BackColor="#EDF6F6" />
                            <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
                            <SortedDescendingCellStyle BackColor="#D6DFDF" />
                            <SortedDescendingHeaderStyle BackColor="#002876" />
                        </asp:GridView>
                    </td>
                </tr>
            </table>
        </div>
    </form>
    <p class="auto-style9">
        Developed by Pratap Reddy 2020.</p>
</body>
</html>
