<%@ Page Title="" Language="C#" MasterPageFile="~/TravelWorld.Master" AutoEventWireup="true" CodeBehind="Booking.aspx.cs" Inherits="Tours_and_Travels.Booking" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">
   <%--       // Uncomment and use this script if you want to calculate total amount client-side
        /*
        function calculateTotal() {
          var amountPerPerson = parseFloat(document.getElementById('<%= TextBox8.ClientID %>').value);
            var numOfPeople = parseInt(document.getElementById('<%= TextBox9.ClientID %>').value);
            var totalAmount = amountPerPerson * numOfPeople;
            document.getElementById('<%= TextBox10.ClientID %>').value = totalAmount.toFixed(2); // Displaying total amount with 2 decimal places
        }
        */--%>
    </script>
    <link rel="stylesheet" type="text/css" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <br />
    <div class="container">
        <div class="card">
            <div class="card-body">
                <div class="row">
                    <div class="col-7">
                        <img src="images/booking.jpg" width="600px" height="750px" />
                    </div>
                    <div class="col-5" style="background-color:#FFFF00;">
                        <br />
                        <center><h3 style="font-family: 'Dancing Script', cursive;">Booking</h3></center>
                        <br />
                        <div class="row">
                            <div class="col">
                                <h5><asp:Label ID="Label1" runat="server" Text="Name"></asp:Label></h5>
                                <div class="form-group">
                                    <asp:TextBox ID="TextBox1" runat="server" placeholder="Name"></asp:TextBox>
                                </div>
                                <h5><asp:Label ID="Label2" runat="server" Text="Mobile Number"></asp:Label></h5>
                                <div class="form-group">
                                    <asp:TextBox ID="TextBox2" runat="server" placeholder="Mobile Number" TextMode="Phone"></asp:TextBox>
                                </div>
                                <h5><asp:Label ID="Label3" runat="server" Text="Email"></asp:Label></h5>
                                <div class="form-group">
                                    <asp:TextBox ID="TextBox3" runat="server" placeholder="Email"></asp:TextBox>
                                </div>
                                <h5><asp:Label ID="Label6" runat="server" Text="Depature city:"></asp:Label></h5>
                                <div class="form-group">
                                    <asp:TextBox ID="TextBox4" runat="server" placeholder="Depature city"></asp:TextBox>
                                </div>
                                <h5><asp:Label ID="Label4" runat="server" Text="Start Date:"></asp:Label></h5>
                                <div class="form-group">
                                    <asp:TextBox ID="TextBox5" runat="server" TextMode="Date"></asp:TextBox>
                                </div>
                                <h5><asp:Label ID="Label7" runat="server" Text="Place"></asp:Label></h5>
                                <div class="form-group">
                                    <asp:TextBox ID="TextBox7" runat="server" placeholder="Place"></asp:TextBox>
                                </div>
                                <h5><asp:Label ID="Label8" runat="server" Text="Amount Per Person"></asp:Label></h5>
                                <div class="form-group">
                                    <asp:TextBox ID="TextBox8" runat="server" placeholder="Amount"></asp:TextBox>
                                </div>
                                <h5><asp:Label ID="Label9" runat="server" Text="Number of People"></asp:Label></h5>
                                <div class="form-group">
                                    <asp:TextBox ID="TextBox9" runat="server" placeholder="Number of People"></asp:TextBox>
                                </div>
                                <%-- Uncomment if you want to display total amount
                                <h5><asp:Label ID="Label10" runat="server" Text="Total Amount"></asp:Label></h5>
                                <div class="form-group">
                                    <asp:TextBox ID="TextBox10" runat="server" placeholder="Total Amount" ReadOnly="true"></asp:TextBox>
                                </div>
                                --%>
                            </div>
                        </div>
                        <br />
                        <asp:Button ID="BtnBook" runat="server" Text="Book" class="btn btn-success" OnClick="BtnBook_Click" /> &nbsp;
                        <asp:Button ID="Button2" runat="server" Text="Reset" class="btn btn-success" OnClick="Button2_Click" />
                    </div>
                </div>
            </div>
        </div>
    </div>
    <br />
</asp:Content>