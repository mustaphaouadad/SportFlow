package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

import model.Coach;
import model.Member;
import model.User;

public class Userdao {
	private Connection coon;

	public Userdao(Connection coon) {
		super();
		this.coon = coon;
	}
	
	
	public boolean Registration(User u,Member m ,Coach c) {
		
	  boolean f=false;
	  try {
		  String sql="insert into Users (fullName,email,password,role)values(?,?,?,?)";
		  PreparedStatement ps=coon.prepareStatement(sql);
		  ps.setString(1, u.getFullName());
		  ps.setString(2, u.getEmail());
		  ps.setString(3, u.getPassword());
		  ps.setString(4, u.getRole());
		  
		  int i=ps.executeUpdate();
		  if (i>0) {
			f=true;
		}
		  
		  if ("member".equalsIgnoreCase(u.getRole())) {
			  String memberQuery ="insert into Members(idMem,dateOfBirth,sportPratique)values(?,?,?)";
			  PreparedStatement pstM=coon.prepareStatement(memberQuery);
			  pstM.setInt(1,m.getIdMem());
			  pstM.setDate(2,m.getDateOfBirth());
			  pstM.setString(3, m.getSportPratique());
		         
			  int im=pstM.executeUpdate();
			  if (im>0) {
				f=true;
			}
			  
			
		}else if ("coach".equalsIgnoreCase(u.getRole())) {
			String coachQuery="insert into Coachs( idCoach,speciality) values (?,?)";
			PreparedStatement pstC=coon.prepareStatement(coachQuery);
			pstC.setInt(1,c.getIdCoach());
			pstC.setString(2, c.getSpeciality());
			
			int ic=pstC.executeUpdate();
			if(ic>0) {
				f=true;
			}
			
		}
		  
		
	} catch (Exception e) {
		e.printStackTrace();
	}
		
		return f;
	}
	
	


}
