<%@ Page Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="DVDTitle.aspx.cs" Inherits="RopeyDVD.DVDTitle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style3 {
            width: 45%;
            height: 411px;
            margin-left:275px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <br />
    <table class="auto-style3">
        <tr>
            <td id="Dnumberlbl">DVD Number:&nbsp;&nbsp;&nbsp; </td>
            <td>
                <asp:TextBox ID="DNumber_txt" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td id="CNumber_lbl">Category Number:&nbsp;&nbsp;&nbsp; </td>
            <td>
                <asp:DropDownList ID="CNumber_dropdown" runat="server" Width="190px" DataSourceID="SqlDataSource1" DataTextField="CategoryNumber" DataValueField="CategoryNumber">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Ropey_DVDConnectionString %>" SelectCommand="SELECT [CategoryNumber] FROM [DVDCategory]"></asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td id="SNumber_lbl">Studio Number:&nbsp;&nbsp;&nbsp; </td>
            <td>
                <asp:DropDownList ID="SNumber_dropdown" runat="server" Width="189px" DataSourceID="SqlDataSource2" DataTextField="StudioNumber" DataValueField="StudioNumber">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:Ropey_DVDConnectionString %>" SelectCommand="SELECT [StudioNumber] FROM [Studio]"></asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td id="PNumberlbl">Producer Number:&nbsp;&nbsp;&nbsp; </td>
            <td>
                <asp:DropDownList ID="PNumber_dropdown" runat="server" Width="187px" DataSourceID="SqlDataSource3" DataTextField="ProducerNumber" DataValueField="ProducerNumber">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:Ropey_DVDConnectionString %>" SelectCommand="SELECT [ProducerNumber] FROM [Producer]"></asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td id="DTitle_lbl">DVD Title:&nbsp;&nbsp;&nbsp; </td>
            <td>
                <asp:TextBox ID="DTitle_txt" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Date of Released:&nbsp;&nbsp;&nbsp; </td>
            <td>
                <asp:TextBox ID="date_txt" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td id="SCharge_lbl">Standart Charge:&nbsp;&nbsp;&nbsp; </td>
            <td>
                <asp:TextBox ID="Scharge_txt" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td id="PCharge_lbl">Penalty Charge:&nbsp;&nbsp;&nbsp; </td>
            <td>
                <asp:TextBox ID="PCharge_txt" runat="server"></asp:TextBox>
            </td>
        </tr>
    </table>
    <div>
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;
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
