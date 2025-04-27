<%@ Page Title="" Language="C#" MasterPageFile="~/TravelWorld.Master" AutoEventWireup="true" CodeBehind="LoginPage.aspx.cs" Inherits="Tours_and_Travels.LoginPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        h4{
        font-size:2.5rem;
        padding-top:10px;
        font-family: 'Dancing Script', cursive;
        padding-left: 42px;
       
    }
        
.container {
        
        background-image:url('images/camera.jpg');
        background-size:cover;
        height:600px;

}

        .card {
            
        opacity:80%;
       width: 285px;
    height: 320px;
        }
        .content {
           padding-top: 125px;
        margin-left: 1.5in;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
                <br />
                <br />
                <br />
    
   <div class="container">
 
    
       <div class="content">
        <div class="card" >
            <div class="card-body">
                <div class="row">
                    <div class="col">
                      <h4>  User Login</h4>
                    </div>
                </div>
                <div class="row">
                    <div class="col">
                     <h5>  <asp:Label ID="Label1" runat="server" Text="Username"></asp:Label></h5> 
                        <div class="form-group">
                            <asp:TextBox ID="TextBox1" runat="server" placeholder="username"></asp:TextBox>       
                        </div>
                      <h5>  <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label></h5>
                        <div class="form-group">
                            <asp:TextBox ID="TextBox2" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>       
                        </div>
                    </div>
                </div>
                <br />

                <div class="row">
                    <div class="col">
                        <asp:Button ID="Button1" runat="server" Text="Login" OnClick="Button1_Click" />
                    </div>
                </div>
                <br />
                <div class="row">
                    <div class="col">
                     <h6>   If not a member??<asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Register Here</asp:LinkButton></h6>
                    </div>
                </div>
            </div>
        </div>
    </div>
     
   </div>
    <br />
    <br />
</asp:Content>
