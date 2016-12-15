<%@ Page Language="VB" MasterPageFile="~/Admin.master" Title="Content Page" %>

   <asp:Content runat="server" ID="AdminContent" ContentPlaceHolderID="AdminContent">
       <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="ms" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
           <AlternatingRowStyle BackColor="White" />
           <Columns>
               <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
               <asp:BoundField DataField="ms" HeaderText="ID" ReadOnly="True" SortExpression="ms" />
               <asp:BoundField DataField="ms_hoa_don" HeaderText="ID Invoice" SortExpression="ms_hoa_don" />
               <asp:BoundField DataField="ms_san_pham" HeaderText="ID Product" SortExpression="ms_san_pham" />
               <asp:BoundField DataField="so_luong" HeaderText="Quantity" SortExpression="so_luong" />
           </Columns>
           <EditRowStyle BackColor="#7C6F57" />
           <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
           <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
           <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
           <RowStyle BackColor="#E3EAEB" />
           <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
           <SortedAscendingCellStyle BackColor="#F8FAFA" />
           <SortedAscendingHeaderStyle BackColor="#246B61" />
           <SortedDescendingCellStyle BackColor="#D4DFE1" />
           <SortedDescendingHeaderStyle BackColor="#15524A" />
       </asp:GridView>  
       <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [hoa_don_chi_tiet] WHERE [ms] = @ms" InsertCommand="INSERT INTO [hoa_don_chi_tiet] ([ms], [ms_hoa_don], [ms_san_pham], [so_luong]) VALUES (@ms, @ms_hoa_don, @ms_san_pham, @so_luong)" SelectCommand="SELECT * FROM [hoa_don_chi_tiet]" UpdateCommand="UPDATE [hoa_don_chi_tiet] SET [ms_hoa_don] = @ms_hoa_don, [ms_san_pham] = @ms_san_pham, [so_luong] = @so_luong WHERE [ms] = @ms">
           <DeleteParameters>
               <asp:Parameter Name="ms" Type="Int32" />
           </DeleteParameters>
           <InsertParameters>
               <asp:Parameter Name="ms" Type="Int32" />
               <asp:Parameter Name="ms_hoa_don" Type="Int32" />
               <asp:Parameter Name="ms_san_pham" Type="Int32" />
               <asp:Parameter Name="so_luong" Type="Int32" />
           </InsertParameters>
           <UpdateParameters>
               <asp:Parameter Name="ms_hoa_don" Type="Int32" />
               <asp:Parameter Name="ms_san_pham" Type="Int32" />
               <asp:Parameter Name="so_luong" Type="Int32" />
               <asp:Parameter Name="ms" Type="Int32" />
           </UpdateParameters>
       </asp:SqlDataSource>
   </asp:Content>