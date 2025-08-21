package com.alarmsystem.Widok.Interfejsy;

import com.alarmsystem.Model.Petition;
import com.alarmsystem.Model.Sensor;
import com.alarmsystem.Prezenter.Application.PresenterUser;

import java.util.List;

public interface iVUser {

	/**
	 * 
	 * @param clientID
	 */
	void showPetitions(int clientID);

	/**
	 * 
	 * @param clientID
	 */
	void showSensors(int clientID);

	/**
	 * 
	 * @param clientID
	 */
	void updatePetition(int clientID);

	/**
	 * 
	 * @param clientID
	 */
	void updateSensor(int clientID);

	void notifyPetitionUpdate();

}