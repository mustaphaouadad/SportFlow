package model;

import java.sql.Date;

public class Member {
	private int idMem;
	private Date dateOfBirth;
	private String  sportPratique;
	
	
	
	
	
	public Member() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Member(Date dateOfBirth, String sportPratique) {
		super();
		this.dateOfBirth = dateOfBirth;
		this.sportPratique = sportPratique;
	}
	public Member(int idMem, Date dateOfBirth, String sportPratique) {
		super();
		this.idMem = idMem;
		this.dateOfBirth = dateOfBirth;
		this.sportPratique = sportPratique;
	}
	//-------------------------------------
	public int getIdMem() {
		return idMem;
	}
	public void setIdMem(int idMem) {
		this.idMem = idMem;
	}
	public Date getDateOfBirth() {
		return dateOfBirth;
	}
	public void setDateOfBirth(Date dateOfBirth) {
		this.dateOfBirth = dateOfBirth;
	}
	public String getSportPratique() {
		return sportPratique;
	}
	public void setSportPratique(String sportPratique) {
		this.sportPratique = sportPratique;
	}
	
	

}
