package Widok.Interfejsy;

import Model.TestService.*;

public interface iPEmployee {

	/**
	 * 
	 * @param clientID
	 */
	void startTests(String clientID);

	/**
	 * 
	 * @param testID
	 */
	SensorTestManager getResults(String testID);

}