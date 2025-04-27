<%@ Page Title="" Language="C#" MasterPageFile="~/TravelWorld.Master" AutoEventWireup="true" CodeBehind="BookHotel.aspx.cs" Inherits="Tours_and_Travels.BookHotel" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            font-size: 12pt;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <br />
    <br />
    <br />

     <div class="container">
 <div class="card">
     <div class="card-body">
         <div class="row">
        <div class="col-7">
            <img src="images/ADL.jpg" width="600px" height="500px"/>
        </div>
        <div class="col-5" style="background-color:cornflowerblue;">
          <br />
        
            <center><h3>
              Booking
          </h3></center>
            <br />
           
             <h5>  <asp:Label ID="Label1" runat="server" Text="Name"></asp:Label></h5> 
                        <div class="form-group">
                            <asp:TextBox ID="TextBox1" runat="server" placeholder="Name"></asp:TextBox>       
                        </div>
                      <h5>  <asp:Label ID="Label2" runat="server" Text="Mobile Number"></asp:Label></h5>
                        <div class="form-group">
                            <asp:TextBox ID="TextBox2" runat="server" placeholder="Mobile Number"></asp:TextBox>       
                        </div>
                            <h5>  <asp:Label ID="Label3" runat="server" Text="Email"></asp:Label></h5>
                        <div class="form-group">
                            <asp:TextBox ID="TextBox3" runat="server" placeholder="Email"></asp:TextBox>       
                        </div>
                           
                          <h5>  <asp:Label ID="Label4" runat="server" Text="From Date:"></asp:Label></h5>
                        <div class="form-group">
                        <asp:TextBox ID="TextBox5" runat="server" placeholder="From Date" TextMode="Date"></asp:TextBox>    
                        </div>
                        <h5>  <asp:Label ID="Label5" runat="server" Text="To Date:"></asp:Label></h5>
                        <div class="form-group">
                             <asp:TextBox ID="TextBox6" runat="server" placeholder="To Date" TextMode="Date"></asp:TextBox> 
                        </div>
                        <h5>  <asp:Label ID="Label7" runat="server" Text="Hotel"></asp:Label></h5>
                         <div class="form-group">
                            <asp:TextBox ID="TextBox7" runat="server" placeholder="Hotel"></asp:TextBox>       
                        </div>
                        <h5>  <asp:Label ID="Label8" runat="server" Text="Amount"></asp:Label></h5>
                        <div class="form-group">
                            <asp:TextBox ID="TextBox8" runat="server" placeholder="Amount"></asp:TextBox>       
                            <br />
                            <br />
                            <br />
                        <asp:Button ID="Button1" runat="server" Text="Done" class="btn btn-success" OnClick="Button1_Click"/>&nbsp;
                            &nbsp;
                        <asp:Button ID="Button2" runat="server" Text="Reset" class="btn btn-success" OnClick="Button2_Click"/>
                        </div>
                       
                         
                    </div>
                    </div>
                <br />

               

        </div>
    </div>
     </div>
 
    
       <br />
        <br />
        
</asp:Content>
