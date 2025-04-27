<%@ Page Title="" Language="C#" MasterPageFile="~/TravelWorld.Master" AutoEventWireup="true" CodeBehind="Hotel.aspx.cs" Inherits="Tours_and_Travels.Hotel" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<br />
    <br />
    <br />
     <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False"   Width="917px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" >
                  <Columns >
                    
                      <asp:TemplateField HeaderText="Hotel">
                          <ItemTemplate>
                              <asp:Label ID="lblPlace" runat="server" Text='<%#Eval("Hotel")%>'></asp:Label>
                          </ItemTemplate>
                      </asp:TemplateField>
                      <asp:TemplateField HeaderText="Description">
                          <ItemTemplate>
                              <asp:Label ID="lblDesc" runat="server" Text='<%#Eval("Description")%>'></asp:Label>
                          </ItemTemplate>
                 </asp:TemplateField>
                     
                 <asp:TemplateField HeaderText="Amount">
                          <ItemTemplate>
                              <asp:Label ID="lblAmt" runat="server" Text='<%#Eval("Amount")%>'></asp:Label>
                          </ItemTemplate>

                      </asp:TemplateField>
                      <asp:TemplateField HeaderText="Image">
                          <ItemTemplate>
                              <asp:Image ID="Image1" runat="server" width="200px" Height="100px" ImageUrl='<%#"data:Image/png;base64,"+Convert.ToBase64String((byte[])Eval("ImageData")) %>'/>
                          </ItemTemplate>
                      </asp:TemplateField>
                    
                    
                    
                    
                    
                      <asp:CommandField HeaderText="Select" ShowSelectButton="True" />
                    
                    
                    
                    
                    
                  </Columns>

              </asp:GridView>
</asp:Content>
