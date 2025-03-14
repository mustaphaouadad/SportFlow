package servlet;

import java.io.IOException;
import java.io.PrintWriter;

import dao.Userdao;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import model.User;

@WebServlet("/Login")
public class Login extends HttpServlet {
	
    public Login() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	    String email = request.getParameter("email");
	    String password = request.getParameter("password");

	    User user = Userdao.checkUser(email, password);

	    if (user != null) {
	        HttpSession session = request.getSession();
	        session.setAttribute("idUser", user.getIdUser());
	        session.setAttribute("fullName", user.getFullName());
	        session.setAttribute("role", user.getRole());

	        if ("member".equalsIgnoreCase(user.getRole())) {
	            response.sendRedirect("memberDashboard.jsp"); 
	        } else if ("coach".equalsIgnoreCase(user.getRole())) {
	            response.sendRedirect("coachDashboard.jsp"); 	        
	            } else {
	            response.sendRedirect("unknownRole.jsp");    
	        }
	    } else {
	        response.sendRedirect("login.jsp?error=invalid");   
	    }
	}


}
