<%@ Page Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="DVDCopy.aspx.cs" Inherits="RopeyDVD.DVDCopy" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style4 {
            width: 47%;
            height: 180px;
            margin-left:325px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <br />
        <table class="auto-style4">
        <tr>
            <td id="CopyNumlbl">Copy Number:&nbsp;&nbsp;&nbsp; </td>
            <td>
                <asp:TextBox ID="CopyNumlbl_txt" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td id="DNumberlbl">DVD Number:&nbsp;&nbsp;&nbsp; </td>
            <td>
                <asp:DropDownList ID="DNumber_dropdown" runat="server" Width="190px" DataSourceID="SqlDataSource1" DataTextField="DVDNumber" DataValueField="DVDNumber">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Ropey_DVDConnectionString %>" SelectCommand="SELECT [DVDNumber] FROM [DVDTitle]"></asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td id="PurchasedDate_lbl">Purchase Date:&nbsp;&nbsp;&nbsp; </td>
            <td>
                <asp:TextBox ID="PurchaseDate_txt" runat="server"></asp:TextBox>
            </td>
        </tr>
    </table>
    <div>
        <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="SaddBtn" runat="server" Text="ADD" Width="145px" CssClass="auto-style15" style="margin-left: 166px" />
&nbsp;&nbsp;
                <asp:Button ID="SresetBtn" runat="server" Text="RESET" Width="145px" />
&nbsp;&nbsp;
                <asp:Button ID="sUpdate" runat="server" Text="UPDATE" Width="145px" />
&nbsp;&nbsp;
                <asp:Button ID="SdeleteBtn" runat="server" Text="DELETE" Width="145px"/>
            &nbsp;<br />
                <br />
    </div>
    <div>

        <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <EditRowStyle BackColor="#999999" />
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

    </div>
</asp:Content>
