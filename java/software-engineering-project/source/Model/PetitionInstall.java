package Model;

import Model.Enumeration.PetitionStatus;
import Model.Enumeration.PetitionType;

import java.util.ArrayList;
import java.util.List;

public class PetitionInstall extends Petition {

	private String description;
	private List<String> sensorList = new ArrayList<String>();
	public PetitionInstall(Client client, PetitionType type, PetitionStatus status){
		super.petitioner = client ;
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
		this.sensorList = sensorList;
	}

	public void setDescription(String description) {
		this.description = description;
	}
}