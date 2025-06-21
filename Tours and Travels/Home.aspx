<%@ Page Title="" Language="C#" MasterPageFile="~/TravelWorld.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Tours_and_Travels.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
 <style>
    /*.cont { 
        background-image:linear-gradient(rgba(0,0,0,0.3),rgba(0,0,0,0.2)),url('images/bg5.jpg');
       width:100%;
       height:465px;
       background-repeat:no-repeat;
       background-size:cover;
           color:white;
           
    }*/
    .cont { 
    background-image: linear-gradient(rgba(0,0,0,0.3), rgba(0,0,0,0.2)), url('images/bg5.jpg');
    width: 100%;
    height: 465px;
    background-repeat: no-repeat;
    background-size: cover;
    color: white;
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
        width: 500px;
    padding: 20px 28px;
        }

     .total {
     width:100%
     
     }
/*#support-chat {
    display: flex;
    justify-content: center;
    align-items: center;
    margin-top: 50px; 
}*/
.chat-text {
    text-align: center;
    font-size: 20px;
    font-weight: bold;
    margin-top: 10px;
    color: dodgerblue; /* optional: adjust color */
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
            <img src="images/kerala.jpg" alt="image" class="card-img-top" width="200px" height="250px"/>
            <div class="card-body">
   <asp:Label ID="Label1" runat="server" Text="Kerala"></asp:Label>
        <asp:Label ID="Label2" runat="server" Text="32000" Visible="False"></asp:Label>
             
               <!-- <h5><asp:LinkButton ID="EuropeDetails" runat="server" OnClick="EuropeDetails_Click">Book Now</asp:LinkButton></h5> -->
            </div>
        </div>
    </div>
    <!--iten ends here-->
                 <div class="item mb-2 ">
        <div class="card border-0 shadow">
           <img src="images/goa.jpg" alt="image" class="card-img-top" width="200px" height="250px"/>
            <div class="card-body">
                  <asp:Label ID="Label3" runat="server" Text="Goa"></asp:Label>
                            <asp:Label ID="Label4" runat="server" Text="16000" Visible="False"></asp:Label>
             
              <!-- <h5><asp:LinkButton ID="MaldivesDetails" runat="server" OnClick="MaldivesDetails_Click">Book Now</asp:LinkButton></h5> -->
            </div>
        </div>
    </div>
    <!--iten ends here-->
                 <div class="item mb-2 ">
        <div class="card border-0 shadow">
            <img src="images/ooty.jpg" alt="image" class="card-img-top" width="200px" height="250px"/>
            <div class="card-body">
          <asp:Label ID="Label5" runat="server" Text="Ooty"></asp:Label>
                            <asp:Label ID="Label6" runat="server" Text="16000" Visible="False"></asp:Label>
             <!--  <h5><asp:LinkButton ID="JapanDetails" runat="server" OnClick="JapanDetails_Click">Book Now</asp:LinkButton></h5>  -->
            </div>
        </div>
    </div>
    <!--iten ends here-->
                 <div class="item mb-2 ">
        <div class="card border-0 shadow">
            <img src="images/kashmir.jpg" alt="image" class="card-img-top" width="200px" height="250px"/>
            <div class="card-body">
               <asp:Label ID="Label7" runat="server" Text="Kashmir"></asp:Label>
                            <asp:Label ID="Label8" runat="server" Text="16000" Visible="False"></asp:Label>
          <!--   <h5> <asp:LinkButton ID="HPDetails" runat="server" OnClick="HimachalDetails_Click">Book Now</asp:LinkButton></h5>  -->
            </div>
        </div>
    </div>
    <!--iten ends here-->
                 <div class="item mb-2 ">
        <div class="card border-0 shadow">
            <img src="images/rajasthan.jpg" alt="image" class="card-img-top" width="200px" height="250px"/>
            <div class="card-body">
               <asp:Label ID="Label9" runat="server" Text="Rajasthan"></asp:Label>
                            <asp:Label ID="Label10" runat="server" Text="16000" Visible="False"></asp:Label>
         <!--       <h5>   <asp:LinkButton ID="LadakhDetails" runat="server" OnClick="LadakhDetails_Click">Book Now</asp:LinkButton></h5> -->
            </div>
        </div>
    </div>
    <!--iten ends here-->
                                 <div class="item mb-2 ">
        <div class="card border-0 shadow">
            <img src="images/meg.jpg" alt="image" class="card-img-top" width="200px" height="250px"/>
            <div class="card-body">
                   <asp:Label ID="Label11" runat="server" Text="Meghalaya"></asp:Label>
                            <asp:Label ID="Label12" runat="server" Text="16000" Visible="False"></asp:Label>
           <!--   <h5> <asp:LinkButton ID="ViewMore" runat="server" OnClick="ViewMore_Click">Book Now</asp:LinkButton></h5>  -->
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
                <img src="images/5-stars.png" width="80px" height="70px"/>
                <h3>affordable hotels</h3>
                <p>
                    5star hotels</p>
            </div>
            <div class="box" >
                <img src="images/balanced-diet.png"width="80px" height="70px"/>
                <h3>food and drinks</h3>
                <p>
                    food&drinks
              
                </p>
            </div>
            <div class="box" >
                <img src="images/megaphone.png" width="80px" height="70px"/>
                <h3>Safety guide</h3>
                <p>
                    safety guide
                    
                </p>
            </div>
            </div>
            <div class="row">
            <div class="box" >
                <img src="images/navigation.png" width="80px" height="70px"/>
                <h3>India tour</h3>
                <p>
                    Experience Beautiful places
                  
                </p>
            </div>
            <div class="box" >
                <img src="images/plane.png" width="80px" height="70px"/>
                <h3>fastest travels</h3>
                <p>
                    fastest travels
                 
                </p>
            </div>
            <div class="box" >
                <img src="images/hiking.png" width="80px" height="70px" />
                <h3>adventure</h3>
                <p>
                    adventure
                  
                </p>
            </div>
                </div>
        </div>
    </section>


   <!--services end-->
        </div>
    <!-- Floating Support Button -->
<div id="support-chat">
    <a href="https://wa.me/919826472625" target="_blank" title="Chat with us on WhatsApp">       
        <p class="chat-text">Customer Support</p>
    </a>
</div>


</asp:Content>
