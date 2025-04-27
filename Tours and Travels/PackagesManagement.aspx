<%@ Page Title="" Language="C#" MasterPageFile="~/TravelWorld.Master" AutoEventWireup="true" CodeBehind="PackagesManagement.aspx.cs" Inherits="Tours_and_Travels.PackagesManagement" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
       
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <br />
    <br />
    <div class="container">
        <div class="row">
                    <div class="col-5">
                        
        <div class="card" >
            <div class="card-boby">
                
                <div class="row">
                    <div class="col">
                       <center><h2 style="font-family:'Dancing Script', cursive;">Package Management</h2></center>  
                    </div>
                </div>
                <hr />
             
              <div class="row" style="padding-left:20px;">
                   <div class="col">
                       <h5><asp:Label ID="lblID" runat="server" Text="ID"></asp:Label></h5>
                        <div class="form-group">
                            <asp:TextBox ID="TextBox1" runat="server" placeholder="PackageId"  Width="250px" ></asp:TextBox>       
                      
                        </div><br />
                   </div>
               </div>
                <div class="row" style="padding-left:20px;">
                   <div class="col">
                       <h5><asp:Label ID="lblPlaceName" runat="server" Text="Place"></asp:Label></h5>
                        <div class="form-group">
                            <asp:TextBox ID="TextBox2" runat="server" placeholder="PlaceName" Width="250px"></asp:TextBox>   
                            
                              <asp:Button ID="getName" runat="server" Text="Go" class="btn btn-primary" OnClick="getName_Click" />
                       
                        </div><br />
                   </div>
               </div>
                
                <div class="row" style="padding-left:20px;">
                   <div class="col">
                       <h5><asp:Label ID="lblDescription" runat="server" Text="Description"></asp:Label></h5>
                        <div class="form-group">
                          <asp:TextBox ID="TextBox3" runat="server" placeholder="PDescription" Width="395px" TextMode="MultiLine"></asp:TextBox>   
                           
                        </div><br />
                   </div>
               </div>
                 <div class="row"style="padding-left:20px;">
                   <div class="col">
                       <h5><asp:Label ID="lblDays" runat="server" Text="Days"></asp:Label></h5>
                        <div class="form-group">
                            <asp:TextBox ID="TextBox4" runat="server" placeholder="Days" Width="250px"></asp:TextBox>       
                        </div><br />
                   </div>
               </div>
                 <div class="row" style="padding-left:20px;">
                   <div class="col">
                       <h5><asp:Label ID="lblAmount" runat="server" Text="Amount_Per_Person"></asp:Label></h5>
                        <div class="form-group">
                            <asp:TextBox ID="TextBox5" runat="server" placeholder="Amount" Width="250px"></asp:TextBox>       
                        </div><br />
                   </div>
               </div>
                  <div class="row" style="padding-left:20px;">
                   <div class="col">
                       <h5><asp:Label ID="lblStartDate" runat="server" Text="StartDate"></asp:Label></h5>
                        <div class="form-group">
                            <asp:TextBox ID="TextBox6" runat="server" TextMode="Date" Width="250px"></asp:TextBox>       
                        </div><br />
                   </div>
               </div>
                <div class="row" style="padding-left:20px;">
                   <div class="col">
                       <h5><asp:Label ID="lblimg" runat="server" Text="Image"></asp:Label></h5>
                        <div class="form-group">
                            <asp:FileUpload ID="ImageUpload" runat="server" />
                        </div><br />
                   </div>
               </div>
                <div class="row" style="padding-left:20px;">
                   <div class="col">
                       <asp:Button ID="Button1" runat="server" Text="Add" OnClick="Button1_Click"  /> <br />
                   </div>
                    &nbsp;
                    <div class="col">
                       <asp:Button ID="Update" runat="server" Text="Update" OnClick="Update_Click1" /> <br />
                   </div>
                    &nbsp;
                    <div class="col">
                       <asp:Button ID="Button3" runat="server" Text="Delete" OnClick="Button3_Click" /> <br />
                   </div>
                     &nbsp;
                     <div class="col">
                        <asp:Button ID="btnclear" runat="server" Text="Clear" OnClick="Clear_Click" /> <br />
                    </div>

               </div>
                
                  <p>
            <asp:Label ID="lblerr" runat="server" Text="" ForeColor="Red"></asp:Label>
        </p>
                  </div>   
            </div>
        </div>
             <div class="col-7">
                  <image src="images/PackM.jpg" width="600px" height="600px" />
                  
                </div>
              </div>
        <br />
        <hr />
        <br />
              <div class="row">
                 <div class="col">
           
            
                 
              <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False"   OnRowDataBound="OnRowDataBound" Width="917px">
                  <Columns >
                    
                    
                 
                      <asp:BoundField DataField="Place"  HeaderText="Place" />
                      <asp:BoundField  DataField="Description" HeaderText="Description" />
                      <asp:BoundField  DataField="TravelDays" HeaderText="Days" />
                      <asp:BoundField  DataField="Amount" HeaderText="Amount" />
                      <asp:TemplateField HeaderText="Image">
                          <ItemTemplate>
                              <asp:Image ID="Image1" runat="server" width="200px" Height="100px"/>
                          </ItemTemplate>
                      </asp:TemplateField>
                    
                    
                  </Columns>

              </asp:GridView>
                  </div>
            
                    
                </div> 
        <br />
        <br />


  </div>
    </asp:Content>
