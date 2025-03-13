package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import model.Coach;
import model.Member;
import model.User;

public class Userdao {
	private Connection coon;

	public Userdao(Connection coon) {
		super();
		this.coon = coon;
	}
	
	
	public boolean Registration(User u, Member m, Coach c) {
	    boolean f = false;
	    try {
	        // إدخال المستخدم في جدول Users
	        String sql = "INSERT INTO Users (fullName, email, password, role) VALUES (?, ?, ?, ?)";
	        PreparedStatement ps = coon.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
	        ps.setString(1, u.getFullName());
	        ps.setString(2, u.getEmail());
	        ps.setString(3, u.getPassword());
	        ps.setString(4, u.getRole());

	        int i = ps.executeUpdate();
	        if (i > 0) {
	            f = true;

	            // الحصول على ID المستخدم الجديد
	            ResultSet rs = ps.getGeneratedKeys();
	            int userId = 0;
	            if (rs.next()) {
	                userId = rs.getInt(1);
	            }

	            // إدخال معلومات الـ Member إذا كان الدور "member"
	            if (m != null) {
	                String memberQuery = "INSERT INTO Members (idMem, dateOfBirth, sportPratique) VALUES (?, ?, ?)";
	                PreparedStatement pstM = coon.prepareStatement(memberQuery);
	                pstM.setInt(1, userId);
	                pstM.setDate(2, m.getDateOfBirth());
	                pstM.setString(3, m.getSportPratique());

	                int im = pstM.executeUpdate();
	                if (im > 0) {
	                    f = true;
	                }
	            }

	            // إدخال معلومات الـ Coach إذا كان الدور "coach"
	            if (c != null) {
	                String coachQuery = "INSERT INTO Coachs (idCoach, speciality) VALUES (?, ?)";
	                PreparedStatement pstC = coon.prepareStatement(coachQuery);
	                pstC.setInt(1, userId);
	                pstC.setString(2, c.getSpeciality());

	                int ic = pstC.executeUpdate();
	                if (ic > 0) {
	                    f = true;
	                }
	            }
	        }

	    } catch (Exception e) {
	        e.printStackTrace();
	    }
	    return f;
	}
	
	  public static User  checkUser(String email , String password) {
		  User user = null;
		  String sql = "select idUser , fullName , role from Users where email = ? and password = ?"; 
		  try {
			  Connection connection =DBConnect.getCoon();
			  PreparedStatement pst=connection.prepareStatement(sql);
			   pst.setString(1,email);
	            pst.setString(2,password);
	            
	            ResultSet rs = pst.executeQuery();
	            if (rs.next()){
	                user = new User();
	                user.setIdUser(rs.getInt("idUser"));
	                user.setFullName(rs.getString("fullName"));
	                user.setRole(rs.getString("role"));
	            }
		} catch (Exception e) {
			 e.printStackTrace();
		}
		  
		  return user;
	  }

	
	


}
