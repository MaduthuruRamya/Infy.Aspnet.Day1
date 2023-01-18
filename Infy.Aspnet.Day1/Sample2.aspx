<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Sample2.aspx.cs" Inherits="Infy.Aspnet.Day1.Sample2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="table w-25">
                <tr>
                    <td>
                        <asp:Label Text="Enter your name" runat="server" />
                    </td>
                    <td>
                        <asp:TextBox ID="TxtName" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <td>
                    <label>User Type</label>

                </td>
                <td>
                    <asp:DropDownList ID="DdlType" runat="server">
                        <asp:ListItem>Admin</asp:ListItem>
                        <asp:ListItem>Employee</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </table>
        </div>
    </form>
</body>
</html>
