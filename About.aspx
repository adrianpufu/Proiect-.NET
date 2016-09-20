<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="pentruex1.About" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <asp:DropDownList runat="server" DataSourceID="SqlDataSource1" DataTextField="StartDate" DataValueField="StartDate" AutoPostBack="True" OnSelectedIndexChanged="categoryDDL_SelectedIndexChanged" ID="categoryDDL" >
    </asp:DropDownList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:conn2 %>" SelectCommand="SELECT * FROM [Dentist]"></asp:SqlDataSource>
    <asp:Repeater ID="junk" runat="server" DataSourceID="SqlDataSource2" >
        <ItemTemplate>
            <p>
            <%#Eval("StartDate") %> <%#Eval("EndDate") %> <%#Eval("FirstName") %> <%#Eval("LastName") %> <%#Eval("Age") %>
            </p>
        </ItemTemplate>
    </asp:Repeater>
<asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:conn2 %>" SelectCommand="SELECT * FROM [Dentist] WHERE ([StartDate] = @IDCategorie)">
    <SelectParameters>
        <asp:ControlParameter ControlID="categoryDDL" Name="IDCategorie" PropertyName="SelectedValue" Type="String" />
    </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>