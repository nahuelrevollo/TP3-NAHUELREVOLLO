using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Negocio;
using Dominio;

namespace Carrito_de_compras
{
    public partial class Listado_Articulos : System.Web.UI.Page
    {

		public List<Articulo> Lista_art { get; set; }

		public List<Marca> Lista_marca { get; set; }
		protected void Page_Load(object sender, EventArgs e)
        {

			try
			{

				Negocio_articulo Neg_art = new Negocio_articulo();
				Lista_art = Neg_art.listar();

				Session[Session.SessionID + "Lista_art"] = Lista_art;

				Negocio_marca marca = new Negocio_marca();

				Lista_marca = marca.Listar();

				ListaMarcas.DataSource = Lista_marca;
				ListaMarcas.DataBind();

				

				}
			catch (Exception ex)
			{

				Session["Error" + Session.SessionID] = "Error de listado";
				Response.Redirect("Error");
			}

		}

	
	}
}