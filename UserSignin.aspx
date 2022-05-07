<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserSignin.aspx.cs" Inherits="RopeyDVD.UserSignin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Poppins&display=swap');
        .name, .type, .password
        {
            display: block;
            padding: 10px;
            margin:5px;
            width:250px;
            background: #FFFFFF;
            border: 1px solid rgba(0, 0, 0, 0.35);
            box-sizing: border-box;
            border-radius: 5px;
            outline:none;
            font-family: 'Poppins', sans-serif;
        }

        .login
        {
            background:#2FB4FF;
            color:white;
            font-family:'Poppins', sans-serif;
            outline:none;
            border: none;
            margin:5px;
            border-radius:5px;
            padding:10px;
            width:250px;
            font-weight: 500;
            text-align: center;
            cursor: pointer;
        }
        .container {
            margin-left: 120px;
            margin-top: 150px;
        }
        .image1
        {
            margin-right:100px;
            margin-top: -105px;
        }
        .h1
        {
            color: #2FB4FF;
            font-family: 'Poppins', sans-serif;
        }
        .message {
            font-family: 'Poppins', sans-serif;
        }
        .UserType
        {
            font-family: 'Poppins', sans-serif;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="logo">
            <figure>
                <asp:Image ID="Image2" runat="server" ImageUrl="~/images/Ropey Logo.png" Height="30px" Width="130px" CssClass="image" /></figure>
        </div>
        <div class="container">
            <h2 align="left" style="font-family: 'MS Reference Sans Serif'; color: #2FB4FF">Login as User</h2>
            <table align="left">
                <tr>

                    <td>
                        <asp:TextBox ID="Username" runat="server" CssClass="name" placeholder="Username"></asp:TextBox></td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter username" ControlToValidate="Username" ForeColor="Red" Font-Names="MS Reference Sans Serif" Font-Size="Small" Visible="False" ></asp:RequiredFieldValidator>
                    </td>
                </tr>

                <tr>
                    <td>
                        
                        <asp:DropDownList ID="DropDownList1" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" CssClass="type" placeholder="User Type">
                            <asp:ListItem Value="Admin">Admin</asp:ListItem>
                            <asp:ListItem Value="Customer">Customer</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please select the user" ControlToValidate="DropDownList1"></asp:RequiredFieldValidator>
                    </td>
                    </tr>
                <tr>
                    <td>
                        <asp:TextBox ID="UserPassword" runat="server" CssClass="password" placeholder="Password" TextMode="Password" OnTextChanged="UserPassword_TextChanged"></asp:TextBox></td>

                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Enter password" ControlToValidate="UserPassword" ForeColor="Red" Display="Dynamic" Font-Names="MS Reference Sans Serif" Font-Size="Small" ></asp:RequiredFieldValidator>
                    </td>
                </tr><br />

                <tr>
                    <td>
                        <asp:Button ID="login" runat="server" Text="Login" CssClass="login" OnClick="login_Click" /></td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="message" runat="server" Text="Label" CssClass="message" Visible="True"></asp:Label></td>
                </tr>
            </table>
        </div>
        <asp:Image ID="Image1" runat="server" CssClass="image1" Height="455px" ImageAlign="Right" ImageUrl="~/images/Login Illustration.png" Width="689px" />
    </form>
</body>
</html>
