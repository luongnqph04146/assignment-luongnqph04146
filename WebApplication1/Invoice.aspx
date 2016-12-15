<%@ Page Language="VB" MasterPageFile="~/Admin.master" Title="Content Page" %>

   <asp:Content runat="server" ID="AdminContent" ContentPlaceHolderID="AdminContent">
       <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ms" DataSourceID="SqlDataSource1" AllowPaging="True" AllowSorting="True" CellPadding="4" ForeColor="#333333" GridLines="None">
           <AlternatingRowStyle BackColor="White" />
           <Columns>
               <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
               <asp:BoundField DataField="ms" HeaderText="ID" ReadOnly="True" SortExpression="ms" />
               <asp:BoundField DataField="trang_thai_hd" HeaderText="Status" SortExpression="trang_thai_hd" />
               <asp:BoundField DataField="ms_khach_hang" HeaderText="ID Customer" SortExpression="ms_khach_hang" />
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
       <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [hoa_don] WHERE [ms] = @ms" InsertCommand="INSERT INTO [hoa_don] ([ms], [trang_thai_hd], [ms_khach_hang]) VALUES (@ms, @trang_thai_hd, @ms_khach_hang)" SelectCommand="SELECT * FROM [hoa_don]" UpdateCommand="UPDATE [hoa_don] SET [trang_thai_hd] = @trang_thai_hd, [ms_khach_hang] = @ms_khach_hang WHERE [ms] = @ms">
           <DeleteParameters>
               <asp:Parameter Name="ms" Type="Int32" />
           </DeleteParameters>
           <InsertParameters>
               <asp:Parameter Name="ms" Type="Int32" />
               <asp:Parameter Name="trang_thai_hd" Type="String" />
               <asp:Parameter Name="ms_khach_hang" Type="Int32" />
           </InsertParameters>
           <UpdateParameters>
               <asp:Parameter Name="trang_thai_hd" Type="String" />
               <asp:Parameter Name="ms_khach_hang" Type="Int32" />
               <asp:Parameter Name="ms" Type="Int32" />
           </UpdateParameters>
       </asp:SqlDataSource>
   </asp:Content>