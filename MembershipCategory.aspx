<%@ Page Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="MembershipCategory.aspx.cs" Inherits="RopeyDVD.MembershipCategory" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 307px;
        }
        .auto-style2 {
            width: 61%;
            height: 238px;
            margin-left: 325px;
        }
        .auto-style3 {
            width: 318px;
        }
        .auto-style4 {
            width: 63%;
            height: 47px;
            margin-left: 305px; 
        }
        .auto-style5 {
            width: 307px;
            height: 61px;
        }
        .auto-style6 {
            width: 318px;
            height: 61px;
        }
        .auto-style7 {
            width: 51%;
            height: 228px;
            margin-left: 355px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <br />
    <table class="auto-style7">
        <tr>
            <td class="auto-style1">
                <asp:Label ID="MCNlbl" runat="server" Text="Membership  Category Number: "></asp:Label>
            </td>
            <td class="auto-style3">
                <asp:TextBox ID="MCNtxt" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">
                <asp:Label ID="MCDlbl" runat="server" Text="Membership  Category Description:"></asp:Label>
            </td>
            <td class="auto-style6">
                <asp:TextBox ID="MCDtxt" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">
                <asp:Label ID="MCTLlbl" runat="server" Text="Membership  Category Total Loans: "></asp:Label>
            </td>
            <td class="auto-style3">
                <asp:TextBox ID="MCTLtxt" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
        </tr>
        </table>
    <table class="auto-style4">
        <tr>
            <td>
                <asp:Button ID="MaddBtn" runat="server" Text="ADD" Width="145px" OnClick="MaddBtn_Click" />
&nbsp;&nbsp;
                <asp:Button ID="MresetBtn" runat="server" Text="RESET" Width="145px" OnClick="MresetBtn_Click" />
&nbsp;&nbsp;
                <asp:Button ID="MupdateBtn" runat="server" Text="UPDATE" Width="145px" OnClick="MupdateBtn_Click" />
&nbsp;&nbsp;
                <asp:Button ID="MdeleteBtn" runat="server" Text="Delete" Width="145px" OnClick="MdeleteBtn_Click" />
            </td>
        </tr>
    </table>
    &nbsp;<br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="msg_label" runat="server" Font-Italic="True" Font-Size="14pt" ForeColor="Red"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
    <div>
 <p>
                <asp:GridView ID="GV" runat="server" OnRowCommand="GV_RowCommand" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Horizontal" Height="132px" Width="766px" AutoGenerateColumns="False" OnSelectedIndexChanged="GV_SelectedIndexChanged">
                    <AlternatingRowStyle BackColor="#F7F7F7" />
                    <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                    <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                    <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                    <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
                    <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                    <SortedAscendingCellStyle BackColor="#F4F4FD" />
                    <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
                    <SortedDescendingCellStyle BackColor="#D8D8F0" />
                    <SortedDescendingHeaderStyle BackColor="#3E3277" />
                    <Columns>
                        <asp:TemplateField HeaderText="ID"> 
                            <ItemTemplate>
                                <asp:Label ID="lbl1" runat="server" Text='<%#Eval("MembershipCategoryNumber")%>'></asp:Label>
                            </ItemTemplate>
                            <HeaderStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                            <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Name"> 
                            <ItemTemplate>
                                <asp:Label ID="lbl2" runat="server" Text='<%#Eval("MembershipCtegoryDescription")%>'></asp:Label>
                            </ItemTemplate>
                            <HeaderStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                            <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                        </asp:TemplateField><asp:TemplateField HeaderText="Price"> 
                            <ItemTemplate>
                                <asp:Label ID="lbl3" runat="server" Text='<%#Eval("MembershipCategoryTotalLoan")%>'></asp:Label>
                            </ItemTemplate>
                            <HeaderStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                            <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                        </asp:TemplateField>
                        <asp:TemplateField> 
                            <ItemTemplate>
                                <asp:LinkButton ID="LinkButton1" runat="server" CommandArgument='<%#Bind("MembershipCategoryNumber")%>'>Select</asp:LinkButton>
                            </ItemTemplate>
                            <HeaderStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                            <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                        </asp:TemplateField>

                    </Columns>
                </asp:GridView>
            </p>

    </div>
</asp:Content>
