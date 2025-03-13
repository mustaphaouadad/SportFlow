package servlet;

import java.io.IOException;

import java.sql.Date;

import dao.DBConnect;
import dao.Userdao;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import model.Coach;
import model.Member;
import model.User;


@WebServlet("/Userregister")
public class Userregister extends HttpServlet {
	
    public Userregister() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
	    String fullname=request.getParameter("fullname");
	    String email=request.getParameter("email");
	    String password=request.getParameter("password");
	    String role=request.getParameter("role");
	    String dateNaissance=request.getParameter("dateNaissance");
	    Date date=Date.valueOf(dateNaissance);
	    String sportPratique=request.getParameter("sportPratique");
	    String speciality=request.getParameter("speciality");
	    
	    User u=new User();
	    u.setFullName(fullname);
	    u.setEmail(email);
	    u.setPassword(password);
	    u.setRole(role);
        Member m=new Member();
        m.setDateOfBirth(date);
        m.setSportPratique(sportPratique);
        Coach c=new Coach();
        c.setSpeciality(speciality);
        Userdao dao=new Userdao(DBConnect.getCoon());
        boolean f=dao.Registration(u, m, c);
        
        HttpSession session =request.getSession();
        if (f) {
        	response.sendRedirect("index.jsp");
			
		} else {
			response.sendRedirect("register.jsp");

		}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
