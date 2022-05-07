<%@ Page Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="CastMember.aspx.cs" Inherits="RopeyDVD.CastMember" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style4 {
            height: 112px;
            width: 423px;
            margin-left:355px
        }
        .auto-style5 {
            height: 44px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    &nbsp;
    <br />
    <br />
        <table class="auto-style4">
            <tr>
                <td id="Dnumberlbl">DVD Number:</td>
                <td>
                    <asp:DropDownList ID="Dnumber_dropdown" runat="server" CssClass="offset-sm-0" Width="252px" DataSourceID="SqlDataSource1" DataTextField="DVDNumber" DataValueField="DVDNumber">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Ropey_DVDConnectionString %>" SelectCommand="SELECT [DVDNumber] FROM [DVDTitle]"></asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td id="ANumberlbl" class="auto-style5">Actor Number:</td>
                <td class="auto-style5">
                    <asp:DropDownList ID="Anumber_dropdown" runat="server" CssClass="offset-sm-0"  Width="252px" DataSourceID="SqlDataSource2" DataTextField="ActorNumber" DataValueField="ActorNumber">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:Ropey_DVDConnectionString %>" SelectCommand="SELECT [ActorNumber] FROM [Actor]"></asp:SqlDataSource>
                </td>
            </tr>
        </table>
    <br />
      <table>
          <tr>
              <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  <asp:Button ID="PaddBtn" runat="server" Text="ADD" Width="145px"/>
&nbsp;&nbsp;&nbsp;
                  <asp:Button ID="PresetBtn" runat="server" Text="RESET" Width="145px" />
&nbsp;&nbsp;&nbsp;
                  <asp:Button ID="PupdateBtn" runat="server" Text="UPDATE" Width="145px" />
&nbsp;&nbsp;&nbsp;
                  <asp:Button ID="PdeleteBtn" runat="server" Text="DELETE" Width="145px" />
              </td>
          </tr>
      </table>
    <br />
    <div>

        <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" style="margin-left: 43px">
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
