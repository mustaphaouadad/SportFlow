package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;

import dao.DBConnect;
import jakarta.servlet.ServletConfig;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;


@WebServlet("/TestConnection")
public class TestConnection extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public TestConnection() {
        super();
        // TODO Auto-generated constructor stub
    }

    private Connection coon;
	public void init(ServletConfig config) throws ServletException {
		coon=DBConnect.getCoon();
		
		if (coon!=null) {
			 System.out.println("connection réussite");
        }else{
            System.out.println("connection échouer");
        }
	}

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		
		
	    if (coon != null) {
            out.println("<h3> Connection réussie à la base de données !</h3>");
        } else {
            out.println("<h3> Échec de la connexion à la base de données.</h3>");
        }

       
		
	}

}
