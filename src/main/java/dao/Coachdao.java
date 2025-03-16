package dao;

import java.sql.Connection;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import model.Coach;
import model.Seance;

public class Coachdao {
	
	private Connection coon;
	

	public Coachdao(Connection coon) {
		super();
		this.coon = coon;
	}


	public Coachdao() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
	  public List<Coach> getAllCoaches() {
		    List<Coach> coaches = new ArrayList<>();
		    String sql = "SELECT u.idUser AS idCoach, u.fullName, u.email, c.speciality FROM Users u JOIN Coachs c ON u.idUser = c.idCoach";
		    try {
		        PreparedStatement pst = coon.prepareStatement(sql);
		        ResultSet rs = pst.executeQuery();
		        while (rs.next()) {
		            Coach c = new Coach();
		            c.setIdCoach(rs.getInt("idCoach"));
		            c.setSpeciality(rs.getString("speciality"));
		            c.setEmail(rs.getString("email"));
		            c.setFullName(rs.getString("fullName"));
		           
		            coaches.add(c);
		        }
		    } catch (Exception e) {
		        e.printStackTrace();
		    }
		    return coaches;
		}
               
	  
	  
	  public List<Seance> getSeancesByCoach(int idCoach) {
	        List<Seance> seances = new ArrayList<>();
	        String sql = "SELECT s.dateSeance, s.heure, u.fullName AS memberName FROM SeanceDentraînement s JOIN Users u ON s.idMem = u.idUser WHERE s.idCoach = ?";
	        try {
	            PreparedStatement pst = coon.prepareStatement(sql);
	            pst.setInt(1, idCoach);
	            ResultSet rs = pst.executeQuery();
	            while (rs.next()) {
	                Seance s = new Seance();
	                s.setDateSeance(rs.getString("dateSeance"));
	                s.setHeure(rs.getString("heure"));
	                s.setMemberName(rs.getString("memberName"));
	                seances.add(s);
	            }
	        } catch (Exception e) {
	            e.printStackTrace();
	        }
	        return seances;
	    }
	  
	  
	  
	  



}
