package es.insa.curso.web.servlets;

import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.QueryParam;
@Path("/")
public class ServicioREST {

	public ServicioREST() {
		
	}
	@GET
	@Path("/saludar")
	public String saludar(@QueryParam("nombre") String nombre){
		return "Hola " + nombre;
	}
	@POST
	@Path("/adios/{nombre}")
	public String despedirse(@PathParam("nombre")String nombre){
		return "Adios " + nombre;
	}	
	
}
