package Filter;

import java.io.IOException;
import jakarta.servlet.Filter;
import jakarta.servlet.FilterChain;
import jakarta.servlet.FilterConfig;
import jakarta.servlet.ServletException;
import jakarta.servlet.ServletRequest;
import jakarta.servlet.ServletResponse;
import jakarta.servlet.annotation.WebFilter;
import jakarta.servlet.http.HttpFilter;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;


@WebFilter({"/coachDashboard.jsp" , "/memberDashboard.jsp" , "/adminDashboard.jsp"})
public class filterSession extends HttpFilter implements Filter {

 


	public void destroy() {
		// TODO Auto-generated method stub
	}


	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		
		HttpServletRequest req = (HttpServletRequest) request;
		HttpServletResponse resp = (HttpServletResponse) response;
		HttpSession session = req.getSession(false);
		if(session == null) {
			resp.sendRedirect("Login.jsp?error=session");
			return;
		}
		
		Object userId = session.getAttribute("idUser");
		Object role = session.getAttribute("role");
		
		if(userId == null) {
			resp.sendRedirect("Login.jsp?error=session");
			return;
		}
		
		chain.doFilter(req, resp);
	}

	public void init(FilterConfig fConfig) throws ServletException {
		// TODO Auto-generated method stub
	}

}
