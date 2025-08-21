package Prezenter.Application;

import Model.*;
import Model.DataBase.DataBase;
import Model.Enumeration.PetitionStatus;
import Model.Enumeration.PetitionType;
import Widok.Interfejsy.*;

import java.util.Collections;

public class PresenterUser extends Presenter implements iPUser {
	Client client;
	iVUser iClientV;
	private SystemChecker system;
	private DataBase db;
	public PresenterUser(){
		System.out.println("Connecting to the System ...");
		system = new SystemChecker();
		System.out.println("Connecting to the DataBase ...");
		db = new DataBase();
	}

	public int createPetition(String clientID, PetitionType type, String description) {
		db.getClients().get(Integer.parseInt(clientID));

		Client client = db.getClients().get(Integer.parseInt(clientID));
		if (client == null) {
			throw new IllegalArgumentException("Nie znaleziono klienta o podanym ID: " + clientID);
		}

		int petitionID = db.generatePetitionID();

		switch (type) {
			case SERWIS:
				PetitionService servicePetition = new PetitionService(client, type, PetitionStatus.OCZEKUJACY);
				servicePetition.setProblemDescription(description);
				servicePetition.setSensorList(Collections.singletonList("Lista czujników")); // Dopasować do danych wejściowych
				db.add(servicePetition, "Petition");
				break;

			case INSTALACJA:
				PetitionInstall installPetition = new PetitionInstall(client, type, PetitionStatus.OCZEKUJACY);
				installPetition.setDescription(description);
				installPetition.setSensorList(Collections.singletonList("Lista czujników")); // Dopasować do danych wejściowych
				db.add(installPetition, "Petition");
				break;

			case ANULOWANIE_UMOWY:
				PetitionCancel cancelPetition = new PetitionCancel(client, type, PetitionStatus.OCZEKUJACY);
				cancelPetition.setContractID(client.getContractID());
				cancelPetition.setJustification(description);
				db.add(cancelPetition, "Petition");
				break;

		}
		return petitionID;
	}

	/**
	 * 
	 * @param petitionID
	 */
	public void editPetition(int petitionID) {
		// TODO - implement PresenterUser.editPetition
		throw new UnsupportedOperationException();
	}

	/**
	 * 
	 * @param petitionID
	 */
	public void deletePetition(int petitionID) {
		// TODO - implement PresenterUser.deletePetition
		throw new UnsupportedOperationException();
	}

	/**
	 * 
	 * @param petitionID
	 */
	public void check(int petitionID) {
		// TODO - implement PresenterUser.check
		throw new UnsupportedOperationException();
	}

	// GETTERY


	public SystemChecker getSystem() {
		return system;
	}
}
