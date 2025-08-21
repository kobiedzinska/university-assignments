package Widok.Interfejsy;

import Model.Enumeration.PetitionType;

public interface iPUser {

	int createPetition(String clientID, PetitionType type, String description);

	/**
	 * 
	 * @param petitionID
	 */
	void editPetition(int petitionID);

	/**
	 * 
	 * @param petitionID
	 */
	void deletePetition(int petitionID);

}