package com.alarmsystem.Model;

import com.alarmsystem.Model.Enumeration.PetitionStatus;
import com.alarmsystem.Model.Enumeration.PetitionType;
import com.alarmsystem.Model.Petition;
import com.alarmsystem.Model.Client;

public class PetitionCancel extends Petition {

	private String description;
	private String justification;
	private int contractID;
	public PetitionCancel(Client client, PetitionType type, PetitionStatus status){
		super.petitioner = client ;
		super.type = type;
		super.status = status;
	}
	//GETTERY
	public String getDescription() {
		return description;
	}

	public Integer getContractID() {
		return contractID;
	}

	public String getJustification() {
		return justification;
	}

	@Override
	public PetitionType getType() {
		return super.getType();
	}
	//SETTERY
	public void setDescription(String description) {
		this.description = description;
	}

	public void setContractID(int contractID) {
		this.contractID = contractID;
	}

	public void setJustification(String justification) {
		this.justification = justification;
	}

	@Override
	public void setPetitionStatus(PetitionStatus status) {
		super.setPetitionStatus(status);
	}



}