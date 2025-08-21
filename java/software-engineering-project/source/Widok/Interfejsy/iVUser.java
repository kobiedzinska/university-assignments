package Widok.Interfejsy;

public interface iVUser {

	/**
	 * 
	 * @param clientID
	 */
	void showPetitions(String clientID);

	/**
	 * 
	 * @param clientID
	 */
	void showSensors(String clientID);

	/**
	 * 
	 * @param clientID
	 */
	void updatePetition(String clientID);

	/**
	 * 
	 * @param clientID
	 */
	void updateSensor(String clientID);

	void notifyPetitionUpdate();

}