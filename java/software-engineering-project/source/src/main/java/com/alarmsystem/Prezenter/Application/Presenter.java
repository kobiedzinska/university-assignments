package com.alarmsystem.Prezenter.Application;

import com.alarmsystem.Model.*;
import com.alarmsystem.Model.DataBase.DataBase;
import com.alarmsystem.Model.Enumeration.PetitionType;
import com.alarmsystem.Model.Interfejsy.iModel;
import com.alarmsystem.Model.TestService.*;

import java.util.ArrayList;
import java.util.List;

public abstract class Presenter implements iModel {

	public void notifyAboutUpdate() {
		// TODO - implement Presenter.notifyAboutUpdate
		throw new UnsupportedOperationException();
	}

	/**
	 * 
	 * @param petitionID
	 */
	public Petition getPetition(int petitionID, PetitionType type) {
		return null;
	}

	/**
	 * 
	 * @param testID
	 */
	public SensorTestManager getResults(int testID) {
		// TODO - implement Presenter.getResults
		throw new UnsupportedOperationException();
	}

	/**
     * @param clientID
     */
	public List<Sensor> getSensors(int clientID) {
		// TODO - implement Presenter.getSensors
		throw new UnsupportedOperationException();
	}

	public List<Petition> getPetitions(int clientID) {
		DataBase db = new DataBase();
		List<Petition> petitions = db.getPetitions();
		List<Petition> clientPetitions = new ArrayList<>();
		for(Petition petition : petitions){
			petition = db.getPetitions().get(clientID);
			clientPetitions.add(petition);
		}
		return clientPetitions;
	}

}