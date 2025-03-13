package model;

import java.sql.Date;

public class SeanceDentrainement {
	
	private int idSeance;
	private Date  dateSeance;
	private String heure;
	
	
	
	public SeanceDentrainement() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
	
	public SeanceDentrainement(Date dateSeance, String heure) {
		super();
		this.dateSeance = dateSeance;
		this.heure = heure;
	}



	public SeanceDentrainement(int idSeance, Date dateSeance, String heure) {
		super();
		this.idSeance = idSeance;
		this.dateSeance = dateSeance;
		this.heure = heure;
	}
	//--------------------------------------
	public int getIdSeance() {
		return idSeance;
	}
	public void setIdSeance(int idSeance) {
		this.idSeance = idSeance;
	}
	public Date getDateSeance() {
		return dateSeance;
	}
	public void setDateSeance(Date dateSeance) {
		this.dateSeance = dateSeance;
	}
	public String getHeure() {
		return heure;
	}
	public void setHeure(String heure) {
		this.heure = heure;
	}
	
	

}
