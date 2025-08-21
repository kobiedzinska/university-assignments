package Prezenter.Application;

import Model.*;
import Model.Interfejsy.iModel;
import Model.TestService.*;

public abstract class Presenter implements iModel {

	public void notifyAboutUpdate() {
		// TODO - implement Presenter.notifyAboutUpdate
		throw new UnsupportedOperationException();
	}

	/**
	 * 
	 * @param petitionID
	 */
	public Petition getPetition(int petitionID) {
		// TODO - implement Presenter.getPetition
		throw new UnsupportedOperationException();
	}

	/**
	 * 
	 * @param testID
	 */
	public SensorTestManager getResults(String testID) {
		// TODO - implement Presenter.getResults
		throw new UnsupportedOperationException();
	}

	/**
	 * 
	 * @param clientID
	 */
	public Sensor getSensors(String clientID) {
		// TODO - implement Presenter.getSensors
		throw new UnsupportedOperationException();
	}

	public Petition getPetitions() {
		// TODO - implement Presenter.getPetitions
		throw new UnsupportedOperationException();
	}

}