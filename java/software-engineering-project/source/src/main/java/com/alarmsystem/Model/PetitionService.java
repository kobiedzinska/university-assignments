package com.alarmsystem.Model;

import com.alarmsystem.Model.Enumeration.PetitionStatus;
import com.alarmsystem.Model.Enumeration.PetitionType;

import java.awt.image.BufferedImage;
import java.util.ArrayList;
import java.util.List;

public class PetitionService extends Petition {

	private String problemDescription;
	private List<String> sensorList = new ArrayList<>();
	private BufferedImage photo;
	public PetitionService(Client client, PetitionType type, PetitionStatus status){
		super.petitioner = client ;
		super.type = type;
		super.status = status;
	}

	// GETTERY
	public BufferedImage getPhoto() {
		return photo;
	}
	public List<String> getSensorList() {
		return sensorList;
	}
	public String getProblemDescription() {
		return problemDescription;
	}
	@Override
	public PetitionType getType() {
		return super.getType();
	}
	// SETTERY
	public void setSensorList(List<String> sensorList) {
		this.sensorList = sensorList;
	}

	public void setPhoto(BufferedImage photo) {
		this.photo = photo;
	}

	public void setProblemDescription(String problemDescription) {
		this.problemDescription = problemDescription;
	}
}