package com.alarmsystem.Widok.ZarzadzanieWidokiem;

import com.alarmsystem.Model.Client;
import com.alarmsystem.Model.Petition;
import com.alarmsystem.Model.Sensor;
import com.alarmsystem.Prezenter.Application.PresenterEmployee;
import com.alarmsystem.Prezenter.Application.PresenterUser;
import com.alarmsystem.Widok.Interfejsy.*;

import java.util.List;

public class PVClient implements iVUser {
	PresenterUser presenterUser;

	public PVClient(PresenterUser presenterUser){
		this.presenterUser = presenterUser;
	}

	/**
	 * 
	 * @param clientID
	 */
	public void showPetitions(int clientID) {

		List<Petition> clientPetitions = presenterUser.getDb().getPetitions();
		for(Petition petition : clientPetitions){
			if(petition.getPetitioner().getID()==clientID)
			System.out.println("Petycja ID: " +petition.getID());
			System.out.println("Imię:" +petition.getPetitioner().getName()+" Nazwisko "+petition.getPetitioner().getSurname());
			System.out.println(petition.getType());
		}

	}

	/**
	 * 
	 * @param clientID
	 */
	public void showSensors(int clientID) {
		PresenterEmployee emp = new PresenterEmployee();
		List<Sensor> list =  emp.getSensors(clientID);
		System.out.println("Lista wszystkich czujników ");
		System.out.println("Klienta o ID: "+clientID);
		int count=1;
		for (Sensor s:list) {
			System.out.println(count +". Czujnik "+s.getSensorType() +" id:"+s.getId());
			System.out.println("	Status: "+s.checkStatus()+"\n");
			count++;
		}
	}

	/**
	 * 
	 * @param clientID
	 */
	public void updatePetition(int clientID) {
		PresenterUser presenterUser = null;
		Client client = presenterUser.getClient(clientID);
		int petitionID = client.getContractID();
		Petition clientPetition = presenterUser.getPetition(petitionID);
		System.out.println(clientPetition);
	}

	/**
	 * 
	 * @param clientID
	 */
	public void updateSensor(int clientID) {
		// TODO - implement PVClient.updateSensor
		throw new UnsupportedOperationException();
	}

	public void notifyPetitionUpdate() {
		// TODO - implement PVClient.notifyPetitionUpdate
		throw new UnsupportedOperationException();
	}

}