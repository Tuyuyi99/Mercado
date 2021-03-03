package interfaces;

import java.util.List;
import models.Producto;

public interface CRUD {

	public List listar();
	public Producto list(int id);
	public boolean add(Producto pro);
	public boolean edit(Producto pro);
	public boolean delete(int id);
}
