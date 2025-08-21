package Model.Interfejsy;

import Model.*;
import Model.TestService.*;

public interface iModel {

	void notifyAboutUpdate();

	/**
	 * 
	 * @param petitionID
	 */
	Petition getPetition(int petitionID);

	/**
	 * 
	 * @param testID
	 */
	SensorTestManager getResults(String testID);

	/**
	 * 
	 * @param clientID
	 */
	Sensor getSensors(String clientID);

	Petition getPetitions();

}