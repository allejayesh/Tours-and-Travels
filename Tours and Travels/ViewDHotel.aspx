<%@ Page Title="" Language="C#" MasterPageFile="~/TravelWorld.Master" AutoEventWireup="true" CodeBehind="ViewDHotel.aspx.cs" Inherits="Tours_and_Travels.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <style> .card
    {
     width:800px;
    }</style> 
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <br />
    <br />
    <br /><center>
<div class="card">

    <asp:Image ID="Image1" runat="server" Height="200px" Width="700px" />
 <div class="card-body">
     <h5><asp:Label ID="Label1" runat="server" Text="Hotel:"></asp:Label></h5>
     <asp:Literal ID="litPlace" runat="server"></asp:Literal><br />
     <h5><asp:Label ID="Label2" runat="server" Text="Description:"></asp:Label></h5>
     <asp:Literal ID="litDesc" runat="server"></asp:Literal><br />
     <br />
     
     
     <br />
     <h5><asp:Label ID="Label3" runat="server" Text="Amount"></asp:Label></h5>
     <asp:Literal ID="litAmount" runat="server"></asp:Literal>
    </div>
    <div><asp:Button ID="Button1" runat="server" Text="Book tickects" OnClick="Button1_Click"></asp:Button>
        </div>
    </div>

    </center>
</asp:Content>
