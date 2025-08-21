package com.alarmsystem.Prezenter.Application;

import com.alarmsystem.Model.*;
import com.alarmsystem.Model.DataBase.DataBase;
import com.alarmsystem.Model.Enumeration.PetitionStatus;
import com.alarmsystem.Model.Enumeration.PetitionType;
import com.alarmsystem.Model.TestService.SensorTestManager;
import com.alarmsystem.Widok.Interfejsy.*;

import java.util.Collections;
import java.util.List;

public class PresenterUser extends Presenter implements iPUser {
	public Client getClient(int clientID) {
		System.out.println(db.getClients().size());
		Client client = db.getClients().get(clientID);
		return client;
	}
	public Client getClientPresenter() {
		return client;
	}
	public PresenterUser(String name, String surname, String email, String PESEL) {
		client = new Client(name, surname, email, PESEL);
		db = new DataBase();
	}
	public int setClientID() {
		if(db!=null){
			int ID = db.generateClientID();
			return ID;
		}
		return -1;
	}

	Client client;
	iVUser iClientV;
	private SystemChecker system;

	public DataBase getDb() {
		return db;
	}

	private DataBase db;
	public PresenterUser(){
		System.out.println("Connecting to the System ...");
		system = new SystemChecker();
		System.out.println("Connecting to the DataBase ...");
		db = new DataBase();
	}

	public int createPetition(int clientID, PetitionType type, String description) {
		int petitionID=-1;
		try{
			Client client = db.getClients().get(clientID);
			if (client == null) {
				throw new IllegalArgumentException("Nie znaleziono klienta o podanym ID: " + clientID);
			}

			petitionID = db.generatePetitionID();

			switch (type) {
				case SERWIS:
					PetitionService servicePetition = new PetitionService(client, type, PetitionStatus.OCZEKUJACY);
					servicePetition.setProblemDescription(description);
					servicePetition.setSensorList(Collections.singletonList("Lista czujników")); // Dopasować do danych wejściowych
					servicePetition.setClientID(clientID);
					servicePetition.setID(petitionID);
					db.add(servicePetition, Petition.class);
					break;

				case INSTALACJA:
					PetitionInstall installPetition = new PetitionInstall(client, type, PetitionStatus.OCZEKUJACY);
					installPetition.setDescription(description);
					installPetition.setSensorList(Collections.singletonList("Lista czujników")); // Dopasować do danych wejściowych
					installPetition.setClientID(clientID);
					installPetition.setID(petitionID);
					db.add(installPetition, Petition.class);
					break;

				case ANULOWANIE_UMOWY:
					PetitionCancel cancelPetition = new PetitionCancel(client, type, PetitionStatus.OCZEKUJACY);
					cancelPetition.setContractID(client.getContractID());
					cancelPetition.setJustification(description);
					cancelPetition.setClientID(clientID);
					cancelPetition.setID(petitionID);
					db.add(cancelPetition, Petition.class);
					break;
				case DEFAULT:
					throw new UnsupportedOperationException("Źle!");

			}
		}catch (IndexOutOfBoundsException e) {
			throw new IllegalArgumentException("Invalid client ID");
		}

		return petitionID;
	}

	/**
	 * 
	 * @param petitionID
	 */
	public void editPetition(int petitionID, PetitionType type, String description) {
		switch(type){
			case SERWIS:
				PetitionService petitionService = (PetitionService) getPetition(petitionID);
				petitionService.setProblemDescription(description);
				db.edit(petitionService, "Petition");
				break;
			case INSTALACJA:
				PetitionInstall petitionInstall = (PetitionInstall) getPetition(petitionID);
				petitionInstall.setDescription(description);
				petitionInstall.setSensorList(Collections.singletonList("Nowe czujniki"));
				db.edit(petitionInstall, "Petition");
				break;
			case ANULOWANIE_UMOWY:
				PetitionCancel petitionCancel = (PetitionCancel) getPetition(petitionID);
				petitionCancel.setDescription(description);
				db.edit(petitionCancel, "Petition");
				break;
			default:
				throw new UnsupportedOperationException();
		}
	}

	/**
	 * 
	 * @param petitionID
	 */
	public void deletePetition(int petitionID) {
		db.delete(petitionID, "Petition");
	}

	public void createPetition(){

	}
	/**
	 * 
	 * @param petitionID
	 */
	public void check(int petitionID) {

		throw new UnsupportedOperationException();
	}

	// GETTERY


	public SystemChecker getSystem() {
		return system;
	}


	@Override
	public Petition getPetition(int petitionID) {
		Petition petition = db.getPetitions().get(petitionID);
		return petition;
	}

	@Override
	public SensorTestManager getResults(int testID) {
		return null;
	}


	@Override
	public List<Sensor> getSensors(int clientID) {

		return null;
	}
}
