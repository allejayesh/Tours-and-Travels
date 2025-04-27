<%@ Page Title="" Language="C#" MasterPageFile="~/TravelWorld.Master" AutoEventWireup="true" CodeBehind="adminLogin.aspx.cs" Inherits="Tours_and_Travels.adminLogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .container {
        margin-top:1in;
        }
        .card-body {
            padding:20px 30px;
        }

    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <div class="container">
 <div class="card">
     <div class="card-body">
         <div class="row">
        <div class="col-7">
            <img src="images/ADL.jpg" width="600px" height="500px"/>
        </div>
        <div class="col-5" style="background-color:cornflowerblue;">
          <br />
            <br />
            <br />
            <center><h3>
              Admin login
          </h3></center>
            <br />
           
            <div class="row" style="padding-left:95px">
                    <div class="col">
                     <h5>  <asp:Label ID="Label1" runat="server" Text="Admin"></asp:Label></h5> 
                        <div class="form-group">
                            <asp:TextBox ID="TextBox1" runat="server" placeholder="AdminId" Width="250px"></asp:TextBox>       
                        </div><br />
                        
                      <h5>  <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label></h5>
                        <div class="form-group">
                            <asp:TextBox ID="TextBox2" runat="server" placeholder="Password" Width="250px" TextMode="Password"></asp:TextBox>       
                        </div><br />
                      
                    </div>
                </div>
                <br />

                <div class="row" style="padding-left:50px;text-align:center;" >
                    <div class="col">
                        <asp:Button ID="Button1" runat="server" Text="Login" OnClick="Button1_Click" />
                    </div>
                </div>
        </div>
    </div>
     </div>
 </div>
    
       <br />
        <br />
        </div>
</asp:Content>
