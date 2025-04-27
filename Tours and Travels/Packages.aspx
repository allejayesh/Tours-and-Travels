<%@ Page Title="" Language="C#" MasterPageFile="~/TravelWorld.Master" AutoEventWireup="true" CodeBehind="Packages.aspx.cs" Inherits="Tours_and_Travels.Packages" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .GridView1 {
            width:100%
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <br />
    <br />
     <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False"  Width="1399px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" >
                  <Columns >
                    
                      <asp:TemplateField HeaderText="Place">
                          <ItemTemplate>
                              <asp:Label ID="lblPlace" runat="server" Text='<%#Eval("Place")%>'></asp:Label>
                          </ItemTemplate>
                      </asp:TemplateField>
                      <asp:TemplateField HeaderText="Description">
                          <ItemTemplate>
                              <asp:Label ID="lblDesc" runat="server" Text='<%#Eval("Description")%>'></asp:Label>
                          </ItemTemplate>
                 </asp:TemplateField>
                       <asp:TemplateField HeaderText="Days">
                          <ItemTemplate>
                              <asp:Label ID="lblDays" runat="server" Text='<%#Eval("TravelDays")%>'></asp:Label>
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

                  <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
                  <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
                  <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
                  <RowStyle BackColor="White" ForeColor="#003399" />
                  <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                  <SortedAscendingCellStyle BackColor="#EDF6F6" />
                  <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
                  <SortedDescendingCellStyle BackColor="#D6DFDF" />
                  <SortedDescendingHeaderStyle BackColor="#002876" />

              </asp:GridView>
</asp:Content>
