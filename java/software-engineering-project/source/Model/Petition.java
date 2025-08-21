package Model;

import Model.Enumeration.*;

public abstract class Petition {

	protected int ID;
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
	public int getID() {
		return ID;
	}

	public void setPetitioner(Client client) {
	}

	public void setClientID(String clientID) {
	}

	public void setType(PetitionType type) {
	}
}