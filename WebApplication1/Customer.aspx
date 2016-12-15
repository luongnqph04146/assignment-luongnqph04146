<%@ Page Language="VB" MasterPageFile="~/Admin.master" Title="Customer" %>

   <asp:Content runat="server" ID="AdminContent" ContentPlaceHolderID="AdminContent">
       <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="ms" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
    <AlternatingRowStyle BackColor="White" />
    <Columns>
        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
        <asp:BoundField DataField="ms" HeaderText="ID" ReadOnly="True" SortExpression="ms" />
        <asp:BoundField DataField="ho_va_ten" HeaderText="Fullname" SortExpression="ho_va_ten" />
        <asp:BoundField DataField="email" HeaderText="Email" SortExpression="email" />
        <asp:BoundField DataField="dia_chi" HeaderText="Address" SortExpression="dia_chi" />
        <asp:BoundField DataField="so_dien_thoai" HeaderText="Phone" SortExpression="so_dien_thoai" />
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
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [khach_hang] WHERE [ms] = @ms" InsertCommand="INSERT INTO [khach_hang] ([ms], [ho_va_ten], [email], [dia_chi], [so_dien_thoai]) VALUES (@ms, @ho_va_ten, @email, @dia_chi, @so_dien_thoai)" SelectCommand="SELECT * FROM [khach_hang]" UpdateCommand="UPDATE [khach_hang] SET [ho_va_ten] = @ho_va_ten, [email] = @email, [dia_chi] = @dia_chi, [so_dien_thoai] = @so_dien_thoai WHERE [ms] = @ms">
        <DeleteParameters>
            <asp:Parameter Name="ms" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="ms" Type="Int32" />
            <asp:Parameter Name="ho_va_ten" Type="String" />
            <asp:Parameter Name="email" Type="String" />
            <asp:Parameter Name="dia_chi" Type="String" />
            <asp:Parameter Name="so_dien_thoai" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="ho_va_ten" Type="String" />
            <asp:Parameter Name="email" Type="String" />
            <asp:Parameter Name="dia_chi" Type="String" />
            <asp:Parameter Name="so_dien_thoai" Type="Int32" />
            <asp:Parameter Name="ms" Type="Int32" />
        </UpdateParameters>
</asp:SqlDataSource>
    </asp:Content>