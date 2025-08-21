package com.alarmsystem.Model;

import com.alarmsystem.Model.Enumeration.PetitionStatus;
import com.alarmsystem.Model.Enumeration.PetitionType;

import java.util.ArrayList;
import java.util.List;

public class PetitionInstall extends Petition {

	private String description;
	private List<String> sensorList = new ArrayList<String>();
	public PetitionInstall(Client client, PetitionType type, PetitionStatus status) {
		if (client == null) {
			throw new NullPointerException("Client cannot be null");
		}
		if (type == null) {
			throw new NullPointerException("PetitionType cannot be null");
		}
		if (status == null) {
			throw new NullPointerException("PetitionStatus cannot be null");
		}

		super.petitioner = client;
		super.type = type;
		super.status = status;
	}


	// GETTERY
	public List<String> getSensorList() {
		return sensorList;
	}

	public String getDescription() {
		return description;
	}

	// SETTERY
	public void setSensorList(List<String> sensorList) {
		if(sensorList == null){
			throw new NullPointerException();
		}
		this.sensorList = sensorList;
	}

	public void setDescription(String description) {
		this.description = description;
	}
}