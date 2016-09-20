<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="pregatiretest.AddLocation" %>
    <asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

        <div style="padding: 10px">
            <asp:Label ID="Label2" runat="server" Text="Stardate:"></asp:Label>
            <br />
            <asp:TextBox ID="TBNume" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="TBNume" runat="server" ErrorMessage="Startdate is required" ForeColor="Red"></asp:RequiredFieldValidator>
        </div>
        <div style="padding: 10px">
            <asp:Label ID="Label3" runat="server" Text="Enddate:"></asp:Label>
            <br />
            <asp:TextBox ID="TBAdresa" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="TBAdresa" runat="server" ErrorMessage="Enddate missing" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
        </div>
        <div style="padding: 10px">
            <asp:Label ID="Label1" runat="server" Text="Firstname:"></asp:Label>
            <br />
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ControlToValidate="TextBox1" runat="server" ErrorMessage="firstname missing" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
        </div>
        <div style="padding: 10px">
            <asp:Label ID="Label4" runat="server" Text="Lastname:"></asp:Label>
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
            <asp:Button ID="UpdateButton" runat="server" Text="Save add" OnClick="SaveButton_Click" />
        </div>
        <div style="padding: 10px">
            <asp:Label ID="LAnswer" runat="server" Text=""></asp:Label>
        </div>

    </asp:Content>