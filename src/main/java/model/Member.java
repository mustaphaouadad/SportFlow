package model;

import java.sql.Date;

public class Member {
	private int idMem;
	private Date dateOfBirth;
	private String  sportPratique;
	
	private String fullName;  // 🆕 Ajouté
    private String email;     // 🆕 Ajouté

    // 🆕 Getters et Setters
    public String getFullName() {
        return fullName;
    }

    public void setFullName(String fullName) {
        this.fullName = fullName;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }
	
	
	
	
	
	public Member() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
	public Member(Date dateOfBirth, String sportPratique, String fullName, String email) {
		super();
		this.dateOfBirth = dateOfBirth;
		this.sportPratique = sportPratique;
		this.fullName = fullName;
		this.email = email;
	}


	public Member(int idMem, Date dateOfBirth, String sportPratique, String fullName, String email) {
		super();
		this.idMem = idMem;
		this.dateOfBirth = dateOfBirth;
		this.sportPratique = sportPratique;
		this.fullName = fullName;
		this.email = email;
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
