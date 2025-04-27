<%@ Page Title="" Language="C#" MasterPageFile="~/TravelWorld.Master" AutoEventWireup="true" CodeBehind="BookingDetail.aspx.cs" Inherits="Tours_and_Travels.BookingDetail" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <br />
    <br />
        <div><center><h3 style="font-family: 'Dancing Script', cursive;">
            Trip  Bookings
             </h3>
               <hr / class="w-25 m-auto " style="color:darkblue; height:5px;">

             </center>

            <br />
              <div class="row" style="padding-left:15%">
                 <div class="col">
           
            
                 
              <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Width="917px" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical">
                  <AlternatingRowStyle BackColor="#DCDCDC" />
                  <Columns >
                    
                    
                 
                      <asp:BoundField DataField="Name"  HeaderText="Name" />
                      <asp:BoundField  DataField="Depature" HeaderText="Depature" />
                      <asp:BoundField  DataField="Place" HeaderText="Place" />
                      <asp:BoundField  DataField="fromdate" HeaderText="Days" />
                      <asp:BoundField  DataField="T_Amount" HeaderText="Amount" />
                     
                    
                    
                  </Columns>

                  <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                  <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                  <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                  <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                  <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                  <SortedAscendingCellStyle BackColor="#F1F1F1" />
                  <SortedAscendingHeaderStyle BackColor="#0000A9" />
                  <SortedDescendingCellStyle BackColor="#CAC9C9" />
                  <SortedDescendingHeaderStyle BackColor="#000065" />

              </asp:GridView>
                  </div>
            
                    
                </div> 
        </div>
    <br />
    <div><center><h3 style="font-family: 'Dancing Script', cursive;">
            Hotel  Bookings
             </h3>
               <hr / class="w-25 m-auto " style="color:darkblue; height:5px;">

             </center>

            <br />
              <div class="row" style="padding-left:15%">
                 <div class="col">
           
            
                 
              <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" Width="917px" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical">
                  <AlternatingRowStyle BackColor="#DCDCDC" />
                  <Columns >
                    
                    
                 
                      <asp:BoundField DataField="Name"  HeaderText="Name" />
                     
                      <asp:BoundField  DataField="Hotel" HeaderText="Hotel" />
                      <asp:BoundField  DataField="fromdate" HeaderText="Checkin date" />
                      <asp:BoundField  DataField="Amount" HeaderText="Amount" />
                     
                    
                    
                  </Columns>

                  <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                  <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                  <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                  <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                  <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                  <SortedAscendingCellStyle BackColor="#F1F1F1" />
                  <SortedAscendingHeaderStyle BackColor="#0000A9" />
                  <SortedDescendingCellStyle BackColor="#CAC9C9" />
                  <SortedDescendingHeaderStyle BackColor="#000065" />

              </asp:GridView>
                  </div>
            
                    
                </div> 
        </div>
</asp:Content>
