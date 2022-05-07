<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="AdminDashboard.aspx.cs" Inherits="RopeyDVD.Dashboard"%>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@7.12.15/dist/sweetalert2.all.min.js"></script>  
    <link rel='stylesheet' href='https://cdn.jsdelivr.net/npm/sweetalert2@7.12.15/dist/sweetalert2.min.css'/>

     <style>
         @import url('https://fonts.googleapis.com/css2?family=Poppins&display=swap');
        .box {
            width: 200px;
            height: 110px;
            display: inline-block;
            margin: 30px;
            position: relative;
            border-radius: 10px;
            padding: 10px;
        }

        .box1 {
            background-color: #FFAC33;
            width: 182px;
            height: 162px;
            border-radius: 10px;
        }

        .box2 {
            background-color: #2E9CDA;
             width: 182px;
            height: 162px;
            border-radius: 10px;
        }

        .box3 {
            background-color: #29E1B5;
             width: 182px;
            height: 162px;
            border-radius: 10px;
        }

        .box4 {
            background-color: #29E147;
             width: 182px;
            height: 162px;
            border-radius: 10px;
        }

        .photo {
            width: 59px;
            height: 52px;
            float: right;
        }

        .number {
            font-size: 18px;
             font-family: 'Poppins', sans-serif;
            margin-top: 10px;
            font-weight: bold;
        }

        .name {
            color: white;
             font-family: 'Poppins', sans-serif;
            font-weight: bold;
            position: absolute;
            top: 60px;
            right: 60px;
         }

        .moreInfo {
            position: absolute;
            font-family: Verdana;
            bottom:0px;
            height: 15px;
            width: 100%;
            border-radius: 0px 0px 10px 10px;
            left: 0px;
            text-align:center;
            vertical-align:middle;
            padding-bottom:10px;
        }

        .moreInfo1 {
            background-color: #f0160a;
        }

        .moreInfo2 {
            background-color: #f0c805;
        }

        .moreInfo3 {
            background-color: #0ce82f;
        }

        .moreInfo4 {
            background-color: #2a09e8;
        }
        .bar, .pie{
            display:inline-block;
            background:white;
        }
        .pie
        {
            margin-left:45px;
        }
         .auto-style1 {
             font-family: 'Poppins', sans-serif;
             color: white;
             font-weight: bold;
             position: absolute;
             top: 68px;
             right: 60px;
             height: 23px;
         }
         .auto-style2 {
             font-family: 'Poppins', sans-serif;
             color: white;
             font-weight: bold;
             position: absolute;
             top: 70px;
             right: 28px;
             height: 23px;
             width: 108px;
             bottom: 89px;
         }
         .auto-style3 {
             font-family: 'Poppins', sans-serif;
             color: white;
             font-weight: bold;
             position: absolute;
             top: 73px;
             right: 60px;
             height: 23px;
             width: 52px;
         }
         .auto-style4 {
             font-family: 'Poppins', sans-serif;
             color: white;
             font-weight: bold;
             position: absolute;
             top: 72px;
             right: 60px;
             height: 23px;
         }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <div class="box box1">
            
            <asp:Label CssClass="number" ID="customerTotal" runat="server" Text="Label" ForeColor="White"></asp:Label>
           <%-- <img class="photo" src="Image/icons8-people-100.png" />--%>
            <asp:Label CssClass="auto-style4" ID="Label2" runat="server" Text="Customers"></asp:Label>
            

        </div>
        <div class="box box2">
            <asp:Label CssClass="number" ID="itemTotal" runat="server" Text="Label" ForeColor="White"></asp:Label>
            <%--<img class="photo" src="Image/item.png" />--%>
            <asp:Label CssClass="auto-style3" ID="Label3" runat="server" Text="DVD"></asp:Label>
            

        </div>
        <div class="box box3">
            <asp:Label CssClass="number" ID="outOfStockTotal" runat="server" Text="Label" ForeColor="White"></asp:Label>
           <%-- <img class="photo" src="Image/out of stock.png" />--%>
            <asp:Label CssClass="auto-style2"  ID="Label5" runat="server" Text="Out of Stocks"></asp:Label>
           
        </div>
        <div class="box box4">
            <asp:Label CssClass="number" ID="supplierTotal" runat="server" Text="Label" ForeColor="White"></asp:Label>
            <%--<img class="photo" src="Image/supplier.png" />--%>
            <asp:Label CssClass="auto-style1" ID="Label7" runat="server" Text="Producers"></asp:Label>
        </div>
       
    </div>
</asp:Content>
