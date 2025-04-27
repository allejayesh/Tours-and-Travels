<%@ Page Title="" Language="C#" MasterPageFile="~/TravelWorld.Master" AutoEventWireup="true" CodeBehind="ViewDetails.aspx.cs" Inherits="Tours_and_Travels.ViewDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style> .card
    {
     width:800px;

    }

        .card-body {
        padding-left:5%
        }
    </style>  
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <br />
    <br /><center>
<div class="card">

  <center> <asp:Image ID="Image1" runat="server" Height="200px" Width="700px" /></center> 
 <div class="card-body">

   <b><asp:Label ID="Label1" runat="server" Text="Place:"></asp:Label></b>  
     <asp:Literal ID="litPlace" runat="server"></asp:Literal>
     <br />
    <b><asp:Label ID="Label2" runat="server" Text="Description:"></asp:Label></b> 
     <asp:Literal ID="litDesc" runat="server"></asp:Literal><br />
     <br />
   <b><asp:Label ID="Label3" runat="server" Text="Days:"></asp:Label></b>  
     <asp:Literal ID="litDays" runat="server"></asp:Literal>
     <br />
<b><asp:Label ID="Label4" runat="server" Text="Amount:"></asp:Label></b>
     <asp:Literal ID="litAmount" runat="server"></asp:Literal>
    </div>
    <div><asp:Button ID="Button1" class="btn btn-success" runat="server" Text="Book tickects" OnClick="Button1_Click"></asp:Button>
        </div>
        <br />
    </div>

    </center>
    <br />
</asp:Content>
