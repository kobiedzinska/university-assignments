package Model;

import Model.Enumeration.PetitionStatus;
import Model.Enumeration.PetitionType;

public class PetitionCancel extends Petition {

	private String description;
	private String justification;
	private String contractID;
	public PetitionCancel(Client client, PetitionType type, PetitionStatus status){
		super.petitioner = client ;
		super.type = type;
		super.status = status;
	}
	//GETTERY
	public String getDescription() {
		return description;
	}

	public String getContractID() {
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

	public void setContractID(String contractID) {
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