<%@ Page Title="" Language="C#" MasterPageFile="~/TravelWorld.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Tours_and_Travels.Register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <style>
        .content {
           
        }
    .container { 
        background-image: url('images/register.jpg'); 
        background-size: cover; 
        height: 600px; }
        .card {
        width:400px;
        margin-left:4.5in;
        opacity:90;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
    <br />
    <br />
    <br />
    <br /><div class="container">
 
    
       <div class="content">
        <div class="card" >
            <div class="card-body">
                <div class="row">
                    <div class="col">
                      <h4>  Registration</h4>
                    </div>
                </div>
                <div class="row">
                    <div class="col">

                     <h5>  <asp:Label ID="Label1" runat="server" Text="Name"></asp:Label></h5> 
                        <div class="form-group">
                            <asp:TextBox ID="TextBox1" runat="server" placeholder="Name"></asp:TextBox>       
                           
                        </div>

                         <h5>  <asp:Label ID="Label2" runat="server" Text="Mobile Number"></asp:Label></h5>
                        <div class="form-group">
                            <asp:TextBox ID="TextBox2" runat="server" placeholder="Mobile Number" TextMode="Number"></asp:TextBox>       
                       
                            </div>

                      <h5>  <asp:Label ID="Label3" runat="server" Text="Email"></asp:Label></h5>
                        <div class="form-group">
                            <asp:TextBox ID="TextBox3" runat="server" placeholder="Email" TextMode="Email"></asp:TextBox>  
                            

                        </div>
                         <h5>  <asp:Label ID="Label4" runat="server" Text="Password"></asp:Label></h5>
                        <div class="form-group">
                            <asp:TextBox ID="TextBox4" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>       
                        </div>
                        <h5>  <asp:Label ID="Label5" runat="server" Text="ConfrimPassword" ></asp:Label></h5>
                        <div class="form-group">
                            <asp:TextBox ID="TextBox5" runat="server" placeholder="ConfrimPassword" TextMode="Password" ></asp:TextBox>       
                        </div>
                    </div>
                
                <br />
                  

                <div class="row">
                    <div class="col">
                         <br />
                   
                        <asp:Button ID="Button1" runat="server" Text="Signup" OnClick="Button1_Click"/>
                    </div>
                </div>
                <br />
                <div class="row">
                    <div class="col">
                        <br />
                     <h6>   If already a member??<asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Login Here</asp:LinkButton></h6>
                    </div>
                </div>
            </div>
                </div>
        </div>
    </div>
     
   </div>
    <br />
    <br />
</asp:Content>
