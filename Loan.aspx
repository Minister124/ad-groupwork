<%@ Page Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Loan.aspx.cs" Inherits="RopeyDVD.Loan" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            height: 46px;
        }
        .auto-style2 {
            height: 46px;
        }
        .auto-style4 {
            height: 35px;
        }
        .auto-style5 {
            height: 35px;
        }
        .auto-style6 {
            width: 45%;
            height: 379px;
            margin-left:355px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <br />
        <table class="auto-style6">
        <tr>
            <td id="LNumberlbl">Loan Number:&nbsp;&nbsp;&nbsp; </td>
            <td>
                <asp:TextBox ID="LNumber_txt" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td id="LTNumber_lbl" class="auto-style1">Loan Type Number:&nbsp;&nbsp;&nbsp; </td>
            <td class="auto-style2">
                <asp:DropDownList ID="LTNumber_dropdown" runat="server" Width="190px" DataSourceID="SqlDataSource1" DataTextField="LoanTypeNumber" DataValueField="LoanTypeNumber">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Ropey_DVDConnectionString %>" SelectCommand="SELECT [LoanTypeNumber] FROM [LoanType]"></asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td id="CopyNumber_lbl">Copy Number:&nbsp;&nbsp;&nbsp; </td>
            <td>
                <asp:DropDownList ID="CopyNumber_dropdown" runat="server" Width="189px" DataSourceID="SqlDataSource2" DataTextField="CopyNumber" DataValueField="CopyNumber">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:Ropey_DVDConnectionString %>" SelectCommand="SELECT [CopyNumber] FROM [DVDCopy]"></asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td id="MemberNumberlbl">Member Number:&nbsp;&nbsp;&nbsp; </td>
            <td>
                <asp:DropDownList ID="MNumber_dropdown" runat="server" Width="187px" DataSourceID="SqlDataSource3" DataTextField="MemberNumber" DataValueField="MemberNumber">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:Ropey_DVDConnectionString %>" SelectCommand="SELECT [MemberNumber] FROM [Member]"></asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td id="Dout_lbl">Date Out:&nbsp;&nbsp;&nbsp; </td>
            <td>
                <asp:TextBox ID="DOut_txt" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style1" id="Ddue_lbl">Date Due:&nbsp;&nbsp;&nbsp; </td>
            <td class="auto-style2">
                <asp:TextBox ID="Ddate_txt" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td id="DReturned_lbl">Date Returned:&nbsp;&nbsp;&nbsp; </td>
            <td>
                <asp:TextBox ID="Dreturned_txt" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td id="PCharge_lbl" class="auto-style5"></td>
            <td class="auto-style4">
                </td>
        </tr>
    </table>
    <div>
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
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
