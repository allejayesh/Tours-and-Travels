<%@ Page Title="" Language="C#" MasterPageFile="~/TravelWorld.Master" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="Tours_and_Travels.HomePage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
    .cont { 
        background-image:linear-gradient(rgba(0,0,0,0.3),rgba(0,0,0,0.2)),url('images/bg5.jpg');
       width:1270px;
       height:465px;
       background-repeat:no-repeat;
       background-size:cover;
           color:white;
           
    }
    h2{font-family: 'Dancing Script', cursive;
       padding-top:104px;
      padding-left: 42px;
       font-size: 4rem;
       
    }
    h4{
        font-size:2.5rem;
        padding-top:10px;
        font-family: 'Dancing Script', cursive;
        padding-left: 42px;
       
    }
    .card{
  padding:0;
 
}

.card-wrapper{
  
}
        .box {
        
        text-align:center;
        width: 427px;
    padding: 20px 28px;
        }
     .total {
     width:100%
     
     }
          
    </style>
   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="total">
    <div class="content">
       <div class="cont">
     <h2> Welcome to Travel World</h2>   
           <h4>"Pack your bags, say goodbye to routine."</h4>
       </div>
    </div>
    <div class="container-fluid my-5">
        <h4 class="text-center mb-3" >What's your this year travel bucketlist?</h4>
        <hr / class="w-25 m-auto " style="color:darkblue; height:5px;">
        <div class="row my-4">
            <div class="owl-carousel owl-theme">
    <div class="item mb-2 ">
        <div class="card border-0 shadow">
            <img src="images/europe.jpg" alt="image" class="card-img-top" width="200px"
 height="250px"/>
            <div class="card-body">
                <asp:Label ID="Label1" runat="server" Text="Europe"></asp:Label>
                <br />
      <h5>  <asp:Label ID="Label2" runat="server" Text="32000"></asp:Label></h5>
             
                <asp:LinkButton ID="EuropeDetails" runat="server" OnClick="EuropeDetails_Click">Book Now</asp:LinkButton>
            </div>
        </div>
    </div>
    <!--iten ends here-->
                 <div class="item mb-2 ">
        <div class="card border-0 shadow">
            <img src="images/maldives.jpg" alt="image
                " class="card-img-top"  width="200px"
 height="250px"/>
            <div class="card-body">
               <asp:Label ID="Label3" runat="server" Text="Maldives"></asp:Label>
                <br />
                   <h5>         <asp:Label ID="Label4" runat="server" Text="16000"></asp:Label></h5>
             
                <asp:LinkButton ID="MaldivesDetails" runat="server" OnClick="MaldivesDetails_Click">Book Now</asp:LinkButton>
            </div>
        </div>
    </div>
    <!--iten ends here-->
                 <div class="item mb-2 ">
        <div class="card border-0 shadow">
            <img src="images/japan.jpg" alt="image" class="card-img-top"  width="200px"
 height="250px"/>
            <div class="card-body">
                 <asp:Label ID="Label5" runat="server" Text="Japan"></asp:Label>
                <br />

                          <h5> <asp:Label ID="Label6" runat="server" Text="16000"></asp:Label></h5>
                <asp:LinkButton ID="JapanDetails" runat="server" OnClick="JapanDetails_Click">Book Now</asp:LinkButton>
            </div>
        </div>
    </div>
    <!--iten ends here-->
                 <div class="item mb-2 ">
        <div class="card border-0 shadow">
            <img src="images/him.jpg" alt="image" class="card-img-top"  width="200px"
 height="250px"/>
            <div class="card-body">
                 <asp:Label ID="Label7" runat="server" Text="Himachal Pradesh"></asp:Label>
                <br />

                           <h5> <asp:Label ID="Label8" runat="server" Text="16000"></asp:Label></h5>
                <asp:LinkButton ID="HimachalDetails" runat="server" OnClick="HimachalDetails_Click">Book Now</asp:LinkButton>
            </div>
        </div>
    </div>
    <!--iten ends here-->
                 <div class="item mb-2 ">
        <div class="card border-0 shadow">
            <img src="images/ladakh.jpg" alt="image" class="card-img-top"  width="200px" height="250px"/>
            <div class="card-body">
             <asp:Label ID="Label9" runat="server" Text="Ladakh"></asp:Label>
                <br />

                          <h5> <asp:Label ID="Label10" runat="server" Text="16000"></asp:Label></h5>  
                <asp:LinkButton ID="LadakhDetails" runat="server" OnClick="LadakhDetails_Click">Book Now</asp:LinkButton>
            </div>
        </div>
    </div>
    <!--iten ends here-->
                                 <div class="item mb-2 ">
        <div class="card border-0 shadow">
            <img src="images/ladakh.jpg" alt="image" class="card-img-top"  width="200px" height="250px"/>
            <div class="card-body">
                   <asp:Label ID="Label11" runat="server" Text="For More Packages"></asp:Label>
            <asp:LinkButton ID="ViewMore" runat="server" OnClick="ViewMore_Click">View More>></asp:LinkButton> 
            </div>
        </div>
    </div>
    <!--iten ends here-->
</div>
        </div>
    </div>
    <!--services-->
    <section class="services" id="servies">
        <h4 style=" text-align:center;">Services</h4>
   <hr / class="w-25 m-auto " style="color:darkblue; height:5px;">
        <div class="box-container">
            <div class="row">
            <div class="box" >
                <img src="images/5-stars.png" width="70px"
 height="70px"/>
                <h3>affordable hotels</h3>
                <p>
                    vhgug gguhu gguiu fyr fgi ggjjg hvhgug gguhu gguiu 
                    
                </p>
            </div>
            <div class="box" >
                <img src="images/balanced-diet.png"  width="70px"
 height="70px"/>
                <h3>food and drinks</h3>
                <p>
                    vhgug gguhu gguiu fyr fgi ggjjg hvhgug gguhu gguiu 
              
                </p>
            </div>
            <div class="box" >
                <img src="images/megaphone.png" width="60px"
 height="70px"/>
                <h3>Safety guide</h3>
                <p>
                    vhgug gguhu gguiu fyr fgi ggjjg hvhgug gguhu gguiu 
                    
                </p>
            </div>
            </div>
            <div class="row">
            <div class="box" >
                <img src="images/navigation.png" width="70px"
 height="70px"/>
                <h3>around the world</h3>
                <p>
                    vhgug gguhu gguiu fyr fgi ggjjg hvhgug gguhu gguiu 
                  
                </p>
            </div>
            <div class="box" >
                <img src="images/plane.png" width="70px"
 height="70px"/>
                <h3>fastest travels</h3>
                <p>
                    vhgug gguhu gguiu fyr fgi ggjjg hvhgug gguhu gguiu 
                 
                </p>
            </div>
            <div class="box" >
                <img src="images/hiking.png" width="60px"
 height="70px" />
                <h3>adeveture</h3>
                <p>
                    vhgug gguhu gguiu fyr fgi ggjjg hvhgug gguhu gguiu 
                  
                </p>
            </div>
                </div>
        </div>
    </section>
   <!--services end-->
        </div>
</asp:Content>
