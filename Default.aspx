<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="search">
        <asp:TextBox ID="tbSearch" runat="server"></asp:TextBox>
        <asp:Button ID="btnSearch" runat="server" Text="Search" />
    </div>
    <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="RecordID" DataSourceID="SqlDataSource1">
    <Columns>
        <asp:BoundField DataField="RecordID" HeaderText="RecordID" InsertVisible="False" ReadOnly="True" SortExpression="RecordID" Visible="False" />
        <asp:BoundField DataField="AlbumName" HeaderText="AlbumName" SortExpression="AlbumName" />
        <asp:BoundField DataField="Artist" HeaderText="Artist" SortExpression="Artist" />
        <asp:HyperLinkField DataNavigateUrlFields="RecordID" DataNavigateUrlFormatString="RecordDetails.aspx?RecordID={0}" Text="View Details" />
    </Columns>
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [RecordID], [AlbumName], [Artist] FROM [Records]" FilterExpression="AlbumName Like '%{0}%'">
    <FilterParameters>
        <asp:ControlParameter ControlID="tbSearch" Name="AlbumName" PropertyName="Text" Type="String" />
    </FilterParameters>
    </asp:SqlDataSource>
</asp:Content>

