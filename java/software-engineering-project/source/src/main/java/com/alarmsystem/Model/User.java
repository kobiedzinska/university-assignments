package com.alarmsystem.Model;

public abstract class User {

	public String getPESEL() {
		return PESEL;
	}

	public String getSurname() {
		return surname;
	}

	public String getName() {
		return name;
	}

	public String getEmail() {
		return email;
	}

	public int getClientsID() {
		return ID;
	}

	protected int ID;
	protected String PESEL;
	protected String surname;
	protected String name;
	protected String email;
	public void setID(int ID) {
		this.ID = ID;
	}

	public void setPESEL(String PESEL) {
		this.PESEL = PESEL;
	}


	public void setSurname(String surname) {
		this.surname = surname;
	}



	public void setName(String name) {
		this.name = name;
	}



	public void setEmail(String email) {
		this.email = email;
	}



}