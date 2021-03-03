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
				p.setId(rs.getInt("Id"));
				p.setNombre(rs.getString("nombre"));
				p.setDescripcion(rs.getString("descripcion"));
				p.setPrecio(rs.getString("precio"));
				
				list.add(p);
			}
			
		} catch (Exception e) {
			
			e.printStackTrace();
			
		}
		return list;
	}

	@Override
	public Producto list(int id) {
		String sql = "SELECT * FROM producto WHERE id = " + id ;
		try {
			con = cn.getConnection();
			ps = con.prepareStatement(sql);
			rs = ps.executeQuery();
			
			while(rs.next()) {
				p.setId(rs.getInt("id"));
				p.setNombre(rs.getString("nombre"));
				p.setDescripcion(rs.getString("descripcion"));
				p.setPrecio(rs.getString("precio"));
			}
			
		} catch (Exception e) {
			
			e.printStackTrace();
			
		}
		return p;
	}

	@Override
	public boolean add(Producto pro) {
		String sql = "INSERT INTO producto(nombre, descripcion, precio) VALUES"
				+ "('" + pro.getNombre()+"','" + pro.getDescripcion() + "','" + pro.getPrecio() + "')";
		try {
			
			con = cn.getConnection();
			ps = con.prepareStatement(sql);
			ps.executeUpdate();
			
		} catch (Exception e) {
			
			e.printStackTrace();
			
		}
		return false;
	}

	@Override
	public boolean edit(Producto pro) {
		String sql = "UPDATE producto SET nombre ='" + pro.getNombre()+"', descripcion ='" + pro.getDescripcion() + "', precio = '" + pro.getPrecio() + "'"
				+ "WHERE id = " + pro.getId();
		
		try {
			
			con = cn.getConnection();
			ps = con.prepareStatement(sql);
			ps.executeUpdate();
			
		} catch (Exception e) {
			
			e.printStackTrace();
			
		}
		return false;
	}

	@Override
	public boolean delete(int id) {
		String sql = "DELETE FROM producto WHERE id = " + id;
		
		try {
			
			con = cn.getConnection();
			ps = con.prepareStatement(sql);
			ps.executeUpdate();
			
		} catch (Exception e) {
			
			e.printStackTrace();
			
		}
		return false;
	}

}
