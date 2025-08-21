package com.alarmsystem.Widok.Interfejsy;

import com.alarmsystem.Model.TestService.*;

public interface iPEmployee {

	/**
	 * 
	 * @param clientID
	 */
	void startTests(int clientID);

	/**
	 * 
	 * @param testID
	 */
	SensorTestManager getResults(int testID);

}