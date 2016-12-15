<%@ Page Language="VB" MasterPageFile="~/Admin.master" Title="Content Page" %>

   <asp:Content runat="server" ID="AdminContent" ContentPlaceHolderID="AdminContent">
       <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="ms" DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#333333" GridLines="None">
           <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
            <asp:BoundField DataField="ms" HeaderText="ID Item" ReadOnly="True" SortExpression="ms" />
            <asp:BoundField DataField="ms_chuyenmuc_sp" HeaderText="ID Category" SortExpression="ms_chuyenmuc_sp" />
            <asp:BoundField DataField="sku" HeaderText="SKU" SortExpression="sku" />
            <asp:BoundField DataField="ten" HeaderText="Name Product" SortExpression="ten" />
            <asp:BoundField DataField="gia" HeaderText="Price" SortExpression="gia" />
            <asp:BoundField DataField="mo_ta" HeaderText="Description" SortExpression="mo_ta" />
            <asp:BoundField DataField="anh" HeaderText="Images" SortExpression="anh" />
            <asp:BoundField DataField="don_vi" HeaderText="Unit" SortExpression="don_vi" />
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
       <div style="height:40px;margin-top:50px;font-size:30px;">Chi Tiết Sản Phẩm</div>
       <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [san_pham] WHERE [ms] = @ms" InsertCommand="INSERT INTO [san_pham] ([ms], [ms_chuyenmuc_sp], [sku], [ten], [gia], [mo_ta], [anh], [don_vi]) VALUES (@ms, @ms_chuyenmuc_sp, @sku, @ten, @gia, @mo_ta, @anh, @don_vi)" SelectCommand="SELECT * FROM [san_pham]" UpdateCommand="UPDATE [san_pham] SET [ms_chuyenmuc_sp] = @ms_chuyenmuc_sp, [sku] = @sku, [ten] = @ten, [gia] = @gia, [mo_ta] = @mo_ta, [anh] = @anh, [don_vi] = @don_vi WHERE [ms] = @ms">
           <DeleteParameters>
               <asp:Parameter Name="ms" Type="Int32" />
           </DeleteParameters>
           <InsertParameters>
               <asp:Parameter Name="ms" Type="Int32" />
               <asp:Parameter Name="ms_chuyenmuc_sp" Type="Int32" />
               <asp:Parameter Name="sku" Type="String" />
               <asp:Parameter Name="ten" Type="String" />
               <asp:Parameter Name="gia" Type="Decimal" />
               <asp:Parameter Name="mo_ta" Type="String" />
               <asp:Parameter Name="anh" Type="String" />
               <asp:Parameter Name="don_vi" Type="String" />
           </InsertParameters>
           <UpdateParameters>
               <asp:Parameter Name="ms_chuyenmuc_sp" Type="Int32" />
               <asp:Parameter Name="sku" Type="String" />
               <asp:Parameter Name="ten" Type="String" />
               <asp:Parameter Name="gia" Type="Decimal" />
               <asp:Parameter Name="mo_ta" Type="String" />
               <asp:Parameter Name="anh" Type="String" />
               <asp:Parameter Name="don_vi" Type="String" />
               <asp:Parameter Name="ms" Type="Int32" />
           </UpdateParameters>
       </asp:SqlDataSource>
       <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="400px" AllowPaging="True" DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" GridLines="Horizontal">
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
