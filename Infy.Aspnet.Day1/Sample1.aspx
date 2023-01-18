﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Sample1.aspx.cs" Inherits="Infy.Aspnet.Day1.Sample1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="CSS/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Button ID="Button1" runat="server" Text="Sample Button" CssClass="btn btn-outline-primary" OnClick="Button1_Click"/>
        </div>
        <div>
        </div>
        <p>
            <asp:Button ID="Button2" runat="server" Text="Sample Button2" CssClass="btn btn-outline-success" OnClick="Button2_Click2" />
        </p>
        <div>
            <asp:DropDownList ID="DropDownList1" runat="server">
                <asp:ListItem>Hyd</asp:ListItem>
                <asp:ListItem>Chennai</asp:ListItem>
                <asp:ListItem>Banglore</asp:ListItem>
            </asp:DropDownList>
        </div>
    </form>
</body>
</html>
