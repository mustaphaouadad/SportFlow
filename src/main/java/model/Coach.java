package model;

public class Coach {
	
	private int idCoach;
	private String speciality;
	private String fullName;
	
	
	
	
	public String getFullName() {
		return fullName;
	}
	public void setFullName(String fullName) {
		this.fullName = fullName;
	}
	
	public Coach() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Coach(String speciality) {
		super();
		this.speciality = speciality;
	}
	public Coach(int idCoach, String speciality) {
		super();
		this.idCoach = idCoach;
		this.speciality = speciality;
	}
	//----------------------
	public int getIdCoach() {
		return idCoach;
	}
	public void setIdCoach(int idCoach) {
		this.idCoach = idCoach;
	}
	public String getSpeciality() {
		return speciality;
	}
	public void setSpeciality(String speciality) {
		this.speciality = speciality;
	}
	
	

}
