package servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;

import dao.DBConnect;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;


@WebServlet("/SeanceServlet")
public class SeanceServlet extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 try {
	            HttpSession session = request.getSession();
	            int idMem = (int) session.getAttribute("idUser"); // ID ديال الميمبر
	            String dateSeance = request.getParameter("dateSeance");
	            String heure = request.getParameter("heure");
	            int idCoach = Integer.parseInt(request.getParameter("idCoach"));

	            Connection conn = DBConnect.getCoon();
	            String sql = "INSERT INTO SeanceDentraînement (dateSeance, heure, idCoach, idMem) VALUES (?, ?, ?, ?)";
	            PreparedStatement pst = conn.prepareStatement(sql);
	            pst.setString(1, dateSeance);
	            pst.setString(2, heure);
	            pst.setInt(3, idCoach);
	            pst.setInt(4, idMem);

	            int i = pst.executeUpdate();
	            if (i > 0) {
	                response.sendRedirect("memberDashboard.jsp"); // توجيه إلى صفحة المدرب
	            } else {
	                response.sendRedirect("memberDashboard.jsp?error=insert_failed");
	            }
	        } catch (Exception e) {
	            e.printStackTrace();
	            response.sendRedirect("memberDashboard.jsp?error=exception");
	        }
	}

}
