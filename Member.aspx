<%@ Page Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Member.aspx.cs" Inherits="RopeyDVD.Member" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style3 {
            width: 559px;
            height: 303px;
            margin-left: 355px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <br />
    <table class="auto-style3">
        <tr>
            <td id="Mnumberlbl">Member Number:&nbsp;&nbsp;&nbsp; </td>
            <td>
                <asp:TextBox ID="MNumber_txt" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td id="MCNumber_lbl">Membership Category Number:&nbsp;&nbsp;&nbsp; </td>
            <td>
                <asp:DropDownList ID="MCNumber_dropdown" runat="server" Width="190px" DataSourceID="SqlDataSource1" DataTextField="MembershipCategoryNumber" DataValueField="MembershipCategoryNumber">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Ropey_DVDConnectionString %>" SelectCommand="SELECT [MembershipCategoryNumber] FROM [MembershipCategory]"></asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td id="MLName_lbl">Member Last Name:&nbsp;&nbsp;&nbsp; </td>
            <td>
                <asp:TextBox ID="MLName_txt" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td id="MFNamelbl">Member First Name:&nbsp;&nbsp;&nbsp; </td>
            <td>
                <asp:TextBox ID="MFName_txt" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td id="MAddresslbl">Member Address:&nbsp;&nbsp;&nbsp; </td>
            <td>
                <asp:TextBox ID="MAddress_txt" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td id="MDOBlbl">Date of Birth:&nbsp;&nbsp;&nbsp; </td>
            <td>
                <asp:TextBox ID="MDOB_txt" runat="server"></asp:TextBox>
            </td>
        </tr>
    </table>
    <div>
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="SaddBtn" runat="server" Text="ADD" Width="145px" style="margin-left: 166px" />
&nbsp;&nbsp;
                <asp:Button ID="SresetBtn" runat="server" Text="RESET" Width="145px" />
&nbsp;&nbsp;
                <asp:Button ID="sUpdate" runat="server" Text="UPDATE" Width="145px" />
&nbsp;&nbsp;
                <asp:Button ID="SdeleteBtn" runat="server" Text="DELETE" Width="145px"/>
            &nbsp;<br />
                <br />
    </div>
</asp:Content>
