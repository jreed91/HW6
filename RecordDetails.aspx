<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="RecordDetails.aspx.vb" Inherits="admin_RecordDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="125px" AutoGenerateRows="False" DataKeyNames="RecordID" DataSourceID="SqlDataSource1">
    <Fields>
        <asp:BoundField DataField="RecordID" HeaderText="RecordID" InsertVisible="False" ReadOnly="True" SortExpression="RecordID" />
        <asp:BoundField DataField="AlbumName" HeaderText="AlbumName" SortExpression="AlbumName" />
        <asp:BoundField DataField="Artist" HeaderText="Artist" SortExpression="Artist" />
        <asp:BoundField DataField="Genre" HeaderText="Genre" SortExpression="Genre" />
        <asp:BoundField DataField="YearReleased" HeaderText="YearReleased" SortExpression="YearReleased" />
        <asp:BoundField DataField="NumberOfSongs" HeaderText="NumberOfSongs" SortExpression="NumberOfSongs" />
    </Fields>
</asp:DetailsView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [RecordID], [AlbumName], [Artist], [Genre], [YearReleased], [NumberOfSongs] FROM [Records] WHERE ([RecordID] = @RecordID)">
    <SelectParameters>
        <asp:QueryStringParameter Name="RecordID" QueryStringField="RecordID" Type="Int32" />
    </SelectParameters>
</asp:SqlDataSource>
</asp:Content>

