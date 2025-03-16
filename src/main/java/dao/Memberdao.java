package dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import model.Member;

public class Memberdao {
	
	private Connection coon;

	public Memberdao() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
	
	public static List<Member> getAllMembers() {
	    List<Member> members = new ArrayList<>();
	    String sql = "SELECT u.fullName, u.email, m.sportPratique FROM Users u JOIN Members m ON u.idUser = m.idMem";

	    try (Connection connection = DBConnect.getCoon();
	         Statement stmt = connection.createStatement();
	         ResultSet rs = stmt.executeQuery(sql)) {

	        while (rs.next()) {
	            Member member = new Member();
	            member.setFullName(rs.getString("fullName")); // 🆕 Maintenant ça marche ✅
	            member.setEmail(rs.getString("email"));       // 🆕 Maintenant ça marche ✅
	            member.setSportPratique(rs.getString("sportPratique"));
	            members.add(member);
	        }
	    } catch (Exception e) {
	        e.printStackTrace();
	    }
	    return members;
	}


	

}
