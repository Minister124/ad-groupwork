<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Actor.aspx.cs" Inherits="RopeyDVD.Actor" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 55%;
            height: 185px;
            margin-left: 355px;
        }
        .auto-style2 {
            width: 73%;
            height: 35px;
            margin-left: 325px;
        }
        .auto-style3 {
            width: 166px;
        }
        .auto-style4 {
            margin-left: 72px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <br />
    <table class="auto-style1">
        <tr>
            <td class="auto-style3">
                <asp:Label ID="ANumlbl" runat="server" Text="Actor Number: "></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="ANumtxt" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">
                <asp:Label ID="ASName" runat="server" Text="Actor Surname:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="ASNametxt" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">
                <asp:Label ID="AFName" runat="server" Text="Actor First Name:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="AFNametxt" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
    <table class="auto-style2">
        <tr>
            <td>
                &nbsp;<asp:Button ID="AaddBtn" runat="server" Text="ADD" Width="145px" CssClass="auto-style4" OnClick="AaddBtn_Click" />
&nbsp;&nbsp;&nbsp;
                <asp:Button ID="AresetBtn" runat="server" Text="RESET" Width="145px" OnClick="AresetBtn_Click" />
&nbsp;&nbsp;&nbsp;
                <asp:Button ID="AupdateBtn" runat="server" Text="UPDATE" Width="145px" OnClick="AupdateBtn_Click" />
&nbsp;&nbsp;&nbsp;
                <asp:Button ID="AdeleteBtn" runat="server" Text="DELETE" Width="145px" OnClick="AdeleteBtn_Click" />
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
                                <asp:Label ID="lbl1" runat="server" Text='<%#Eval("ActorNumber")%>'></asp:Label>
                            </ItemTemplate>
                            <HeaderStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                            <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Name"> 
                            <ItemTemplate>
                                <asp:Label ID="lbl2" runat="server" Text='<%#Eval("ActorSurname")%>'></asp:Label>
                            </ItemTemplate>
                            <HeaderStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                            <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                        </asp:TemplateField><asp:TemplateField HeaderText="Price"> 
                            <ItemTemplate>
                                <asp:Label ID="lbl3" runat="server" Text='<%#Eval("ActorFirstName")%>'></asp:Label>
                            </ItemTemplate>
                            <HeaderStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                            <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                        </asp:TemplateField>
                        <asp:TemplateField> 
                            <ItemTemplate>
                                <asp:LinkButton ID="LinkButton1" runat="server" CommandArgument='<%#Bind("ActorNumber")%>'>Select</asp:LinkButton>
                            </ItemTemplate>
                            <HeaderStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                            <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                        </asp:TemplateField>

                    </Columns>
                </asp:GridView>
            </p>
    </div>
</asp:Content>