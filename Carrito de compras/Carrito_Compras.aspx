<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Carrito_Compras.aspx.cs" Inherits="Carrito_de_compras.Carrito_Compras" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

 <h1>Carriro de compras </h1>

      <a  href="Listado_Articulos.aspx" class="btn btn-primary" >Seguir comprando</a>

  <div class="container">
        <div class="row">
            <div class="col">
                <table class="table">
                    <tr>
                        <td></td>
                        <td style="font-weight:bold;">Nombre</td>
                        <td style="font-weight:bold;">Marca</td>
                        <td style="font-weight:bold;">Cantidad</td>
                        <td style="font-weight:bold;">Precio</td>
                    </tr>
                    <%foreach (var compra in Listado_compra)
                        {
                    %>

                    <tr>
                        <td> <img src="<%=compra.Imagen_Url%>" style="max-height: 50px; max-width: 50px;"></td>
                        <td><% = compra.Nombre %></td>
                        <td><% = compra.Marca %></td>
                        <td><% = compra.Cantidad %></td>
                        <td><% = "$ "+ decimal.Round(compra.Precio, 2, MidpointRounding.AwayFromZero) %></td>

                        <td><a href="Carrito_Compras.aspx?idQuitar=<% = compra.ID.ToString() %>" class="btn btn-primary">Quitar</a></td>
                    </tr>


                    <% } %>
                </table>

            </div>

        </div>
    </div>
    <div >

    <asp:Label ID="LblMontototal" runat="server" style="margin-left:400px" Font-Bold="true"></asp:Label>

    </div>



</asp:Content>
