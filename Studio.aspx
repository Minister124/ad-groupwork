<%@ Page Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Studio.aspx.cs" Inherits="RopeyDVD.Studio" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style4 {
            width: 55%;
            height: 181px;
            margin-top: 35px;
            margin-left: 355px;
        }
        .auto-style5 {
            width: 156px;
            height: 45px;
        }
        .auto-style6 {
            height: 45px;
        }
        .auto-style9 {
            width: 156px;
            height: 41px;
        }
        .auto-style10 {
            height: 41px;
        }
        .auto-style11 {
            width: 156px;
            height: 42px;
        }
        .auto-style12 {
            height: 42px;
        }
        .auto-style15 {
            margin-left: 206px;
        }
        .auto-style16 {
            margin-left: 35px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <br />
    <table class="auto-style4">
        <tr>
            <td class="auto-style5">
                <asp:Label ID="studioNumlbl" runat="server" Text="Studio Number: "></asp:Label>
            </td>
            <td class="auto-style6">
                <asp:TextBox ID="SNumtxt" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style11">
                <asp:Label ID="studioNamelbl" runat="server" Text="Studio Name: "></asp:Label>
            </td>
            <td class="auto-style12">
                <asp:TextBox ID="SNametxt" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style9"></td>
            <td class="auto-style10">&nbsp;</td>
        </tr>
        </table>
    <div>
                <asp:Button ID="SaddBtn" runat="server" Text="ADD" Width="145px" CssClass="auto-style15" OnClick="SaddBtn_Click" />
&nbsp;&nbsp;
                <asp:Button ID="SresetBtn" runat="server" Text="RESET" Width="145px" OnClick="SresetBtn_Click" />
&nbsp;&nbsp;
                <asp:Button ID="sUpdate" runat="server" Text="UPDATE" Width="145px" OnClick="sUpdate_Click" />
&nbsp;&nbsp;
                <asp:Button ID="SdeleteBtn" runat="server" Text="DELETE" Width="145px" OnClick="SdeleteBtn_Click" />
            &nbsp;<br />
    </div>
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
                                <asp:Label ID="lbl1" runat="server" Text='<%#Eval("StudioNumber")%>'></asp:Label>
                            </ItemTemplate>
                            <HeaderStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                            <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Name"> 
                            <ItemTemplate>
                                <asp:Label ID="lbl2" runat="server" Text='<%#Eval("StudioName")%>'></asp:Label>
                            </ItemTemplate>
                            <HeaderStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                            <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                        </asp:TemplateField>
                        <asp:TemplateField> 
                            <ItemTemplate>
                                <asp:LinkButton ID="LinkButton1" runat="server" CommandArgument='<%#Bind("StudioNumber")%>'>Select</asp:LinkButton>
                            </ItemTemplate>
                            <HeaderStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                            <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                        </asp:TemplateField>

                    </Columns>
                </asp:GridView>
            </p>
    </div>
    <br />
    <br />
</asp:Content>
