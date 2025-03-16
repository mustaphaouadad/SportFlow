package model;

public class Coach {
	
	private int idCoach;
	private String speciality;
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
	
	public Coach() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
		public Coach(String speciality, String fullName, String email) {
		super();
		this.speciality = speciality;
		this.fullName = fullName;
		this.email = email;
	}

	
	public Coach(int idCoach, String speciality, String fullName, String email) {
			super();
			this.idCoach = idCoach;
			this.speciality = speciality;
			this.fullName = fullName;
			this.email = email;
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
