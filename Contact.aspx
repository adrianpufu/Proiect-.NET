<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="pentruex1.Contact" %>

    <asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
        <asp:DropDownList runat="server" DataSourceID="SqlDataSource1" DataTextField="LastName" DataValueField="ID" AutoPostBack="True" OnSelectedIndexChanged="categoryDDL_SelectedIndexChanged" ID="categoryDDL">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:conn2 %>" SelectCommand="SELECT * FROM [Dentist]"></asp:SqlDataSource>
        <div style="padding: 10px">
            <asp:Label ID="Label2" runat="server" Text="Startdate"></asp:Label>
            <br />
            <asp:TextBox ID="TBNume" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="TBNume" runat="server" ErrorMessage="startdate required" ForeColor="Red"></asp:RequiredFieldValidator>
        </div>
        <div style="padding: 10px">
            <asp:Label ID="Label3" runat="server" Text="Enddate"></asp:Label>
            <br />
            <asp:TextBox ID="TBAdresa" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="TBAdresa" runat="server" ErrorMessage="enddate missing" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
        </div>
        <div style="padding: 10px">
            <asp:Label ID="Label1" runat="server" Text="Firstname:"></asp:Label>
            <br />
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ControlToValidate="TextBox1" runat="server" ErrorMessage="firstname missing" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
        </div>
        <div style="padding: 10px">
            <asp:Label ID="Label4" runat="server" Text="lastname:"></asp:Label>
            <br />
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ControlToValidate="TextBox2" runat="server" ErrorMessage="lastname missing" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
        </div>
        <div style="padding: 10px">
            <asp:Label ID="Label5" runat="server" Text="Age:"></asp:Label>
            <br />
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" ControlToValidate="TextBox3" runat="server" ErrorMessage="age missing" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
        </div>
        <div style="padding: 10px">
            <asp:Button ID="UpdateButton" runat="server" Text="Save edit" OnClick="SaveButton_Click" />
        </div>
        <div style="padding: 10px">
            <asp:Label ID="LAnswer" runat="server" Text=""></asp:Label>
        </div>
    </asp:Content>