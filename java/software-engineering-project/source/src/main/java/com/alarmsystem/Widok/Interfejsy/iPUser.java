package com.alarmsystem.Widok.Interfejsy;

import com.alarmsystem.Model.Enumeration.PetitionType;
import com.alarmsystem.Model.Petition;

public interface iPUser {

	int createPetition(int clientID, PetitionType type, String description);

	/**
	 * 
	 * @param petitionID
	 */
	void editPetition(int petitionID, PetitionType type, String description);

	/**
	 * 
	 * @param petitionID
	 */
	void deletePetition(int petitionID);

}