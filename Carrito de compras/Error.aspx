<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Error.aspx.cs" Inherits="Carrito_de_compras.Error" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

 <p><% = Session["Error" + Session.SessionID] %></p>

</asp:Content>
