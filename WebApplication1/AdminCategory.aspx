<%@ Page Language="VB" MasterPageFile="~/Admin.master" Title="Content Page" %>

   <asp:Content runat="server" ID="AdminContent" ContentPlaceHolderID="AdminContent">
       <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="ms" DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#333333" GridLines="None">
           <AlternatingRowStyle BackColor="White" />
           <Columns>
               <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
               <asp:BoundField DataField="ms" HeaderText="ID Category" ReadOnly="True" SortExpression="ms" />
               <asp:BoundField DataField="ten" HeaderText="Name Category" SortExpression="ten" />
               <asp:BoundField DataField="ms_chuyenmuc_cha" HeaderText="ID Root Category" SortExpression="ms_chuyenmuc_cha" />
               <asp:BoundField DataField="mo_ta" HeaderText="Description" SortExpression="mo_ta" />
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
       <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [chuyenmuc_sanpham] WHERE [ms] = @ms" InsertCommand="INSERT INTO [chuyenmuc_sanpham] ([ms], [ten], [ms_chuyenmuc_cha], [mo_ta]) VALUES (@ms, @ten, @ms_chuyenmuc_cha, @mo_ta)" SelectCommand="SELECT * FROM [chuyenmuc_sanpham]" UpdateCommand="UPDATE [chuyenmuc_sanpham] SET [ten] = @ten, [ms_chuyenmuc_cha] = @ms_chuyenmuc_cha, [mo_ta] = @mo_ta WHERE [ms] = @ms">
           <DeleteParameters>
               <asp:Parameter Name="ms" Type="Int32" />
           </DeleteParameters>
           <InsertParameters>
               <asp:Parameter Name="ms" Type="Int32" />
               <asp:Parameter Name="ten" Type="String" />
               <asp:Parameter Name="ms_chuyenmuc_cha" Type="Int32" />
               <asp:Parameter Name="mo_ta" Type="String" />
           </InsertParameters>
           <UpdateParameters>
               <asp:Parameter Name="ten" Type="String" />
               <asp:Parameter Name="ms_chuyenmuc_cha" Type="Int32" />
               <asp:Parameter Name="mo_ta" Type="String" />
               <asp:Parameter Name="ms" Type="Int32" />
           </UpdateParameters>
       </asp:SqlDataSource>
       <div style="height:40px;margin-top:30px;font-size:25px">Chi tiết danh muc</div>
       <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="400px" AllowPaging="True" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" DataSourceID="SqlDataSource1" GridLines="Horizontal">
           <EditRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
           <Fields>
               <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
           </Fields>
           <FooterStyle BackColor="White" ForeColor="#333333" />
           <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
           <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
           <RowStyle BackColor="White" ForeColor="#333333" />
</asp:DetailsView>
   </asp:Content>