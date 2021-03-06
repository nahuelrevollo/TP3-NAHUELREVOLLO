﻿<%@ Page Title="Listado de articulos" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Listado_Articulos.aspx.cs" Inherits="Carrito_de_compras.Listado_Articulos" %>



<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <h1>Listado de articulos </h1>

    
   <div class="dropdown">
  <button class="btn btn-primary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
    Marcas
  </button>
  <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
    
      <% foreach (var marca in Lista_marca) { %>
                    <a href="Listado_Articulos.aspx?idmarca=<% = marca.ID.ToString() %>" class="dropdown-item"><% = marca.Descripcion %></a>
                     <% } %>

  </div>
</div>

  <div class="card-columns" style="margin-left: 10px; margin-right: 10px;">

   
      <% foreach (var art_s in Lista_art)
            { %>
         <div class="card" style="width: 18rem;">
            <img src="<% = art_s.Imagen_Url %>" class="card-img-top" alt="..."  height="150">
            <div class="card-body">
                

                <h5 class="card-title"><% = art_s.Nombre %></h5>
                <h6 class="card-title"><%=art_s.Marca.Descripcion %></h6>
                <p class="card-text"><% ="$ "+ decimal.Round(art_s.Precio, 2, MidpointRounding.AwayFromZero) %>  </p>              
                <a  href="Descripcion.aspx?idart=<% =art_s.ID.ToString()%>" class="btn btn-primary" >Descripcion</a>
                <a  href="Carrito_Compras.aspx?idcompra=<% =art_s.ID.ToString()%>" class="btn btn-primary">Agregar al carrito</a>

                
                
            </div>
        </div>
        <% } %>
      
  
  
  
  </div>



</asp:Content>
