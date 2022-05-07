<%@ Page Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="DVDCategory.aspx.cs" Inherits="RopeyDVD.DVDCategory" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 215px;
        }
        .auto-style2 {
            width: 65%;
            height: 181px;
        }
        .auto-style3 {
            width: 85%;
            height: 40px;
            margin-left: 225px;
        }
        .auto-style4 {
            margin-left: 128px;
        }
        .auto-style5 {
            height: 49px;
        }
        .auto-style6 {
            width: 55%;
            height: 213px;
            margin-left: 455px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <br />
    <table class="auto-style6">
        <tr>
            <td class="auto-style1">
                <asp:Label ID="DCNlbl" runat="server" Text="Category Number: "></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="DCNtxt" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">
                <asp:Label ID="DCDlbl" runat="server" Text="Category Description:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="DCDtxt" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">
                <asp:Label ID="DARlbl" runat="server" Text="Age Restriction: "></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="ARDP" runat="server" Width="93px">
                    <asp:ListItem>20</asp:ListItem>
                    <asp:ListItem Value="16">16</asp:ListItem>
                </asp:DropDownList>
            &nbsp;
            </td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td>&nbsp;&nbsp;</td>
        </tr>
    </table>
    <table class="auto-style3">
        <tr>
            <td class="auto-style5">
                <asp:Button ID="DaddBtn" runat="server" Text="ADD" Width="145px" CssClass="auto-style4" OnClick="DaddBtn_Click" />
&nbsp;&nbsp;
                <asp:Button ID="DresetBtn" runat="server" Text="RESET" Width="145px" OnClick="DresetBtn_Click" />
&nbsp;&nbsp;&nbsp;
                <asp:Button ID="DupdateBtn" runat="server" Text="UPDATE" Width="145px" OnClick="DupdateBtn_Click" />
&nbsp;&nbsp;&nbsp;
                <asp:Button ID="DdeleteBtn" runat="server" Text="DELETE" Width="145px" OnClick="DdeleteBtn_Click" />
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
                                <asp:Label ID="lbl1" runat="server" Text='<%#Eval("CategoryNumber")%>'></asp:Label>
                            </ItemTemplate>
                            <HeaderStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                            <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Name"> 
                            <ItemTemplate>
                                <asp:Label ID="lbl2" runat="server" Text='<%#Eval("CategoryDescription")%>'></asp:Label>
                            </ItemTemplate>
                            <HeaderStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                            <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                        </asp:TemplateField><asp:TemplateField HeaderText="Price"> 
                            <ItemTemplate>
                                <asp:Label ID="lbl3" runat="server" Text='<%#Eval("AgeRestricted")%>'></asp:Label>
                            </ItemTemplate>
                            <HeaderStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                            <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                        </asp:TemplateField>
                        <asp:TemplateField> 
                            <ItemTemplate>
                                <asp:LinkButton ID="LinkButton1" runat="server" CommandArgument='<%#Bind("CategoryNumber")%>'>Select</asp:LinkButton>
                            </ItemTemplate>
                            <HeaderStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                            <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                        </asp:TemplateField>

                    </Columns>
                </asp:GridView>
            </p>

    </div>
</asp:Content>
