package modeloDAO;

import java.sql.*;
import java.util.*;

import config.Conexion;
import interfaces.CRUD;
import models.Producto;

public class ProductoDAO implements CRUD{
	
	Conexion cn = new Conexion();
	Connection con;
	PreparedStatement ps;
	ResultSet rs;
	Producto p = new Producto();

	@Override
	public List<Producto> listar() {
		ArrayList<Producto>list = new ArrayList<>();
		String sql = "SELECT * FROM producto";
		try {
			con = cn.getConnection();
			ps = con.prepareStatement(sql);
			rs = ps.executeQuery();
			
			while(rs.next()) {
				Producto p = new Producto();
				p.setNombre(rs.getString("nombre"));
				p.setDescripcion(rs.getString("descripcion"));
				p.setPrecio(rs.getInt("precio"));
				
				list.add(p);
			}
			
		} catch (Exception e) {
			
		}
		return list;
	}

	@Override
	public Producto list(String nombre) {
		return null;
	}

	@Override
	public boolean add(Producto pro) {
		return false;
	}

	@Override
	public boolean edit(Producto pro) {
		return false;
	}

	@Override
	public boolean delete(String nombre) {
		return false;
	}

}
