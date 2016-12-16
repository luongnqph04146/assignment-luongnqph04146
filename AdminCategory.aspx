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
       <asp:DetailsView ID="DetailsView2" runat="server" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="ms" DataSourceID="SqlDataSource3" Height="50px" Width="125px">
           <Fields>
               <asp:BoundField DataField="ms" HeaderText="ms" ReadOnly="True" SortExpression="ms" />
               <asp:BoundField DataField="ten" HeaderText="ten" SortExpression="ten" />
               <asp:BoundField DataField="ms_chuyenmuc_cha" HeaderText="ms_chuyenmuc_cha" SortExpression="ms_chuyenmuc_cha" />
               <asp:BoundField DataField="mo_ta" HeaderText="mo_ta" SortExpression="mo_ta" />
               <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
           </Fields>
       </asp:DetailsView>
       <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" DeleteCommand="DELETE FROM [chuyenmuc_sanpham] WHERE [ms] = @original_ms AND [ten] = @original_ten AND (([ms_chuyenmuc_cha] = @original_ms_chuyenmuc_cha) OR ([ms_chuyenmuc_cha] IS NULL AND @original_ms_chuyenmuc_cha IS NULL)) AND [mo_ta] = @original_mo_ta" InsertCommand="INSERT INTO [chuyenmuc_sanpham] ([ms], [ten], [ms_chuyenmuc_cha], [mo_ta]) VALUES (@ms, @ten, @ms_chuyenmuc_cha, @mo_ta)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [ms], [ten], [ms_chuyenmuc_cha], [mo_ta] FROM [chuyenmuc_sanpham]" UpdateCommand="UPDATE [chuyenmuc_sanpham] SET [ten] = @ten, [ms_chuyenmuc_cha] = @ms_chuyenmuc_cha, [mo_ta] = @mo_ta WHERE [ms] = @original_ms AND [ten] = @original_ten AND (([ms_chuyenmuc_cha] = @original_ms_chuyenmuc_cha) OR ([ms_chuyenmuc_cha] IS NULL AND @original_ms_chuyenmuc_cha IS NULL)) AND [mo_ta] = @original_mo_ta">
           <DeleteParameters>
               <asp:Parameter Name="original_ms" Type="Int32" />
               <asp:Parameter Name="original_ten" Type="String" />
               <asp:Parameter Name="original_ms_chuyenmuc_cha" Type="Int32" />
               <asp:Parameter Name="original_mo_ta" Type="String" />
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
               <asp:Parameter Name="original_ms" Type="Int32" />
               <asp:Parameter Name="original_ten" Type="String" />
               <asp:Parameter Name="original_ms_chuyenmuc_cha" Type="Int32" />
               <asp:Parameter Name="original_mo_ta" Type="String" />
           </UpdateParameters>
       </asp:SqlDataSource>
       <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" DeleteCommand="DELETE FROM [chuyenmuc_sanpham] WHERE [ms] = @original_ms AND [ten] = @original_ten AND [mo_ta] = @original_mo_ta AND (([ms_chuyenmuc_cha] = @original_ms_chuyenmuc_cha) OR ([ms_chuyenmuc_cha] IS NULL AND @original_ms_chuyenmuc_cha IS NULL))" InsertCommand="INSERT INTO [chuyenmuc_sanpham] ([ms], [ten], [mo_ta], [ms_chuyenmuc_cha]) VALUES (@ms, @ten, @mo_ta, @ms_chuyenmuc_cha)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [ms], [ten], [mo_ta], [ms_chuyenmuc_cha] FROM [chuyenmuc_sanpham]" UpdateCommand="UPDATE [chuyenmuc_sanpham] SET [ten] = @ten, [mo_ta] = @mo_ta, [ms_chuyenmuc_cha] = @ms_chuyenmuc_cha WHERE [ms] = @original_ms AND [ten] = @original_ten AND [mo_ta] = @original_mo_ta AND (([ms_chuyenmuc_cha] = @original_ms_chuyenmuc_cha) OR ([ms_chuyenmuc_cha] IS NULL AND @original_ms_chuyenmuc_cha IS NULL))">
           <DeleteParameters>
               <asp:Parameter Name="original_ms" Type="Int32" />
               <asp:Parameter Name="original_ten" Type="String" />
               <asp:Parameter Name="original_mo_ta" Type="String" />
               <asp:Parameter Name="original_ms_chuyenmuc_cha" Type="Int32" />
           </DeleteParameters>
           <InsertParameters>
               <asp:Parameter Name="ms" Type="Int32" />
               <asp:Parameter Name="ten" Type="String" />
               <asp:Parameter Name="mo_ta" Type="String" />
               <asp:Parameter Name="ms_chuyenmuc_cha" Type="Int32" />
           </InsertParameters>
           <UpdateParameters>
               <asp:Parameter Name="ten" Type="String" />
               <asp:Parameter Name="mo_ta" Type="String" />
               <asp:Parameter Name="ms_chuyenmuc_cha" Type="Int32" />
               <asp:Parameter Name="original_ms" Type="Int32" />
               <asp:Parameter Name="original_ten" Type="String" />
               <asp:Parameter Name="original_mo_ta" Type="String" />
               <asp:Parameter Name="original_ms_chuyenmuc_cha" Type="Int32" />
           </UpdateParameters>
       </asp:SqlDataSource>
   </asp:Content>