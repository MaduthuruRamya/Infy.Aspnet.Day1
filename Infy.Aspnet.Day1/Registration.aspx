<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="Infy.Aspnet.Day1.Registration" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="CSS/bootstrap.min.css" rel="stylesheet" />
    
    
    <script>
        function checkItems(source, args) {
            var chkList = document.getElementById("chkBeverages");
            var items = chkList.getElementByTagName("input");
            for (var i = 0; i < items.length; i++) {
                if (items[i].checked) {
                    args.IsValid = true;
                    return;
                }
            }
            args.IsValid = false;
        }
    </script>
</head>
<body class="mt-4">
    <form id="form1" runat="server">
        <div class="container">
            <div class="row">
                <div class="col-md-3"></div>
                <div class="col-md-5">
                    <div class="mb-2 row">
                        <label class="form-label col-md-4">First Name</label>
                        <div class="col-md-8">
                            <asp:TextBox ID="TxtFirstName" runat="server" CssClass="form-control" />
                            <asp:RequiredFieldValidator SetFocusonError="true" Display="Dynamic" Text="*" ForeColor="Red" ID="RfvFirstName" runat="server" ControlToValidate="TxtFirstName" ErrorMessage="Please enter first name"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                    <div class="mb-2 row">
                        <label class="form-label  col-md-4">Email Id</label>
                        <div class="col-md-8">
                            <asp:TextBox ID="TxtEmailId" runat="server" CssClass="form-control" />
                            <asp:RequiredFieldValidator SetFocusonError="true" Display="Dynamic" Text="*" ForeColor="Red" ErrorMessage="Please enter valid email" ID="RfvEmailId" ControlToValidate="TxtEmailId" runat="server" />
                            <asp:RegularExpressionValidator SetFocusonError="true" Display="Dynamic" Text="*" ForeColor="Red" ID="RevEmailId" runat="server" ControlToValidate="TxtEmailId" ErrorMessage="please enter valid email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                        </div>
                    </div>
                    <div class="mb-2 row">
                        <label class="form-label col-md-4">Password</label>
                        <div class="col-md-8">
                            <asp:TextBox ID="TxtPassword" runat="server" CssClass="form-control" TextMode="Password" />
                            <asp:RequiredFieldValidator SetFocusonError="true" Display="Dynamic" Text="*" ForeColor="Red" ErrorMessage="Please enter the password" ID="RfvPassword" ControlToValidate="TxtPassword" runat="server"></asp:RequiredFieldValidator>

                        </div>
                    </div>
                    <div class="mb-2 row">
                        <label class="form-label col-md-4">Confirm Password</label>
                        <div class="col-md-8">
                            <asp:TextBox ID="TxtConfirmPassword" runat="server" CssClass="form-control" TextMode="Password" />
                            <asp:CompareValidator SetFocusonError="true" Display="Dynamic" Text="*" ForeColor="Red" ID="CvconfirmPassword" ControlToValidate="TxtPassword" runat="server" ErrorMessage="Password and confirm Password"></asp:CompareValidator>
                        </div>
                    </div>
                     <div class="mb-2 row">
                        <label class="form-label col-md-4">City</label>
                        <div class="col-md-8">
                            <asp:DropDownList CssClass="form-select" ID="DdlCities" runat="server">
                                <asp:ListItem Text="--select--" Value="0" />
                                <asp:ListItem Text="Chennai" Value="CHN" />
                                <asp:ListItem Text="Hyderabad" Value="HYD" />
                                <asp:ListItem Text="Mumbai" Value="MUM" />
                                <asp:ListItem Text="Visakapatinam" Value="VIZ" />
                                <asp:ListItem Text="Bengaluru" Value="BEN" />
                            </asp:DropDownList>
                        </div>
                    </div>
                     <div class="mb-2 row">
                        <label class="form-label col-md-4">Salary</label>
                        <div class="col-md-8">
                            <asp:TextBox ID="TxtSalary" runat="server" CssClass="form-control" />
                            <asp:RequiredFieldValidator  SetFocusonError="true" Display="Dynamic" Text="*" ForeColor="Red" ID="RvSalary" ControlToValidate="TxtSalary" runat="server" ErrorMessage="salaray should be between 10000 and 100000" 
                                MaximumValue="100000" MinimumValue="10000" Type="Currency"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                    <div class="mb-2 row">
                        <div class="col-md-4 form-label">Beverages</div>
                        <div class="col-md-8">
                            <asp:CheckBoxList ID="ChkBeverages" runat="server">
                                <asp:ListItem Text="Tea" />
                                <asp:ListItem Text="Coffee" />
                                <asp:ListItem Text="Soft Drinks" />
                                <asp:ListItem Text="Chocolate Coffee" />
                            </asp:CheckBoxList>
                            <asp:CustomValidator ID="CvBevarages" runat="server" SetFocusonError="true" Display="Dynamic" Text="*" ForeColor="Red" ErrorMessage="Please select any one item"
                                ClientValidationFunction="checkItems"
                                OnServerValidate="CvBevarages_ServerValidate"></asp:CustomValidator>
                        </div>
                    </div>
                    <div class="mb-2">
                        <asp:Button Text="Submit" ID="BtnSubmit" runat="server" OnClick="BtnSubmit_Click" />
                        <asp:Button Text="Reset" ID="BtnReset" runat="server" />
                    </div>
                    <div class="mt-2">
                        <asp:HyperLink ID="link1" runat="server" NavigateUrl="~/Sample1.aspx.cs">Go to page</asp:HyperLink>
                    </div>
                </div>
                <div class="col-md-3">
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server"  ForeColor="Red" DisplayMode="BulletList" />
                </div>
            </div>
        </div>
    </form>
</body>
</html>
