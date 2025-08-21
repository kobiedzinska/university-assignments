package com.alarmsystem.Model.Interfejsy;

import com.alarmsystem.Model.*;
import com.alarmsystem.Model.TestService.*;

import java.util.List;

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
	SensorTestManager getResults(int testID);

	/**
     * @param clientID
     */
	List<Sensor> getSensors(int clientID);

	List<Petition> getPetitions(int clientID);

}