package com.alarmsystem.Model;

import com.alarmsystem.Model.Enumeration.*;
import com.alarmsystem.Model.Client.*;


public abstract class Petition {

	protected int ID;

	public PetitionStatus getStatus() {
		return status;
	}

	protected PetitionStatus status;
	protected Client petitioner;
	protected Employee operator;
	protected PetitionType type;

	public PetitionType getType() {
		return this.type;
	}
	// SETTERY
	public void setPetitionStatus(PetitionStatus status) {
		this.status = status;
	}
	//GETTERY
	public void setID(int ID) {
		this.ID = ID;;
	}
	public int getID() {
		return this.ID;
	}
	public void setPetitioner(int contractID) {
		this.petitioner = new Client(contractID);
	}
	public void setEmployee(Employee employee) {
		this.operator = employee;
	}
	public void setClientID(int clientID) {
	}
	public Client getPetitioner() {
		return petitioner;
	}
	public void setType(PetitionType type) {
	}


}