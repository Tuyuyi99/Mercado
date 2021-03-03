package controllers;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import modeloDAO.ProductoDAO;
import models.Producto;

/**
 * Servlet implementation class Controlador
 */
@WebServlet("/Controlador")
public class Controlador extends HttpServlet {
	
	String index = "index.jsp";
	String add = "views/agregar.jsp";
	String edit = "views/editar.jsp";
	Producto p = new Producto();
	ProductoDAO dao = new ProductoDAO();
	int id;
	
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Controlador() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String acceso = "";	
		String action = request.getParameter("accion");
		if (action.equalsIgnoreCase("listar")) {
			
			acceso = index;
			
		} else if(action.equalsIgnoreCase("add")) {
			
			acceso = add;
			
		} else if(action.equalsIgnoreCase("Agregar")) {
			
			String nombre = request.getParameter("nombreForm");
			String descripcion = request.getParameter("descripcionForm");
			String precio = request.getParameter("precioForm");
			p.setNombre(nombre);
			p.setDescripcion(descripcion);
			p.setPrecio(precio);
			dao.add(p);
			
			acceso = index;
			
		}
		
		else if(action.equalsIgnoreCase("editar")) {
			request.setAttribute("idpro", request.getParameter("id"));
			
			acceso = edit;
		}
		
		else if (action.equalsIgnoreCase("Actualizar")) {
			id = Integer.parseInt(request.getParameter("txtid"));
			String nombre = request.getParameter("nombreForm");
			String descripcion = request.getParameter("descripcionForm");
			String precio = request.getParameter("precioForm");
			p.setId(id);
			p.setNombre(nombre);
			p.setDescripcion(descripcion);
			p.setPrecio(precio);
			dao.edit(p);
			
			acceso = index;
			
		} else if(action.equalsIgnoreCase("eliminar")) {
			id = Integer.parseInt(request.getParameter("id"));
			p.setId(id);
			dao.delete(id);
			
			
			acceso = index;
		}
		
		
		
		RequestDispatcher vista = request.getRequestDispatcher(acceso);
		vista.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
