<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="delete.aspx.cs" Inherits="pentruex1.delete" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
        <asp:DropDownList runat="server" DataSourceID="SqlDataSource1" DataTextField="StartDate" DataValueField="ID" AutoPostBack="True" OnSelectedIndexChanged="categoryDDL_SelectedIndexChanged" ID="categoryDDL" >
    </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:conn2 %>" SelectCommand="SELECT * FROM [Dentist]"></asp:SqlDataSource>
        <div style="padding: 10px">
        <asp:Button ID="UpdateButton" runat="server" Text="Save delete" OnClick="SaveButton_Click" />
    </div>
        <div style="padding: 10px">
        <asp:Label ID="LAnswer" runat="server" Text=""></asp:Label>
    </div>
</asp:Content>
