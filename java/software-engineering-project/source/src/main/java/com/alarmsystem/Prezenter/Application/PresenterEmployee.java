package com.alarmsystem.Prezenter.Application;

import com.alarmsystem.Model.*;
import com.alarmsystem.Model.DataBase.DataBase;
import com.alarmsystem.Model.Enumeration.PetitionStatus;
import com.alarmsystem.Model.Enumeration.PetitionType;
import com.alarmsystem.Model.TestService.SensorTestManager;
import com.alarmsystem.Widok.Interfejsy.*;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

import static java.util.Collections.singletonList;

public class PresenterEmployee extends Presenter implements iPEmployee, iPUser {
	private EmployeeP employeeP;
	private SensorManagementPresenter smp;
	private SensorTestManager stm;
	private SystemChecker system;
	private DataBase db;

	public PresenterEmployee() {
		System.out.println("Connecting to the System ...");
		system = new SystemChecker();
		System.out.println("Connecting to the DataBase ...");
		db = new DataBase();
	}

	public Petition getPetition(int petitionID) {
		Petition petition = db.getPetitions().get(petitionID);
		if (petition == null) {
			throw new IllegalArgumentException("Nie znaleziono wniosku o podanym ID: " + petitionID);
		}
		return petition;
	}


	@Override
	public int createPetition(int clientID, PetitionType type, String description) {
			Client client = db.getClients().get(clientID);

			if (client == null) {
				throw new IllegalArgumentException("Nie znaleziono klienta o podanym ID: " + clientID);
			}

			int petitionID = db.generatePetitionID();

			switch (type) {
				case SERWIS:
					PetitionService servicePetition = new PetitionService(client, type, PetitionStatus.OCZEKUJACY);
					servicePetition.setProblemDescription(description);
					servicePetition.setSensorList(singletonList("Lista czujników")); // Dopasować do danych wejściowych
					db.add(servicePetition, Petition.class);
					break;

				case INSTALACJA:
					PetitionInstall installPetition = new PetitionInstall(client, type, PetitionStatus.OCZEKUJACY);
					installPetition.setDescription(description);
					installPetition.setSensorList(singletonList("Lista czujników")); // Dopasować do danych wejściowych
					db.add(installPetition, Petition.class);
					break;

				case ANULOWANIE_UMOWY:
					PetitionCancel cancelPetition = new PetitionCancel(client, type, PetitionStatus.OCZEKUJACY);
					cancelPetition.setContractID(client.getContractID());
					cancelPetition.setJustification(description);
					db.add(cancelPetition, Petition.class);
					break;
				case DEFAULT:
					throw new UnsupportedOperationException("Źle!");

			}
			return petitionID;
	}

	@Override
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

	@Override
	public void deletePetition(int petitionID) {
		db.delete(petitionID, "Petition");
	}

	@Override
	public void startTests(int clientID) {
		try {
			Client client = db.getClients().get(clientID);
			if (client == null) {
				System.out.println("[startTests]: Nie znaleziono klienta o ID " + clientID);
				return;
			}

			List<Sensor> sensorList = client.getClientSensors();
			if (sensorList.isEmpty()) {
				System.out.println("[startTests]: Lista sensorów jest pusta dla klienta " + clientID);
				return;
			}

			int testManagerId = db.generateID("SensorTestManager");
			stm = new SensorTestManager(sensorList, testManagerId);
			stm.createResults();
			System.out.println("[startTests]: Utworzono nowy test o ID " + testManagerId);
		} catch (Exception e) {
			System.out.println("[startTests]: Błąd podczas uruchamiania testów: " + e.getMessage());
		}
	}

	@Override
	public Petition getPetition(int petitionID, PetitionType type) {
		// TODO - dodać tworzenie wniosków danego typu, ogólnie ta funkcja jest bezsensu
		try {
			Petition petition = db.getPetitions().get(petitionID);
			if (petition == null) {
				throw new IllegalArgumentException("Nie znaleziono wniosku o podanym ID: " + petitionID);
			}
			if (petition.getType() == type) {
				return petition;
			}
			System.out.println("[getPetition]: Nie znaleziono petycji o ID " + petitionID + " i typie " + type);
			return null;
		} catch (Exception e) {
			System.out.println("[getPetition]: Błąd podczas pobierania petycji: " + e.getMessage());
			return null;
		}
	}

	/*@Override
	public Petition getPetition(int petitionID) {
		try {
			Petition petition = db.getPetitions().get(petitionID);
			if (petition != null) {
				return petition;
			}
			System.out.println("[getPetition]: Nie znaleziono petycji o ID " + petitionID);
			return null;
		} catch (Exception e) {
			System.out.println("[getPetition]: Błąd podczas pobierania petycji: " + e.getMessage());
			return null;
		}
	}*/

	@Override
	public SensorTestManager getResults(int testID) {
		try {
			TestResult tr = db.get(testID,TestResult.class);
			if (tr == null) {
				throw new IllegalArgumentException("Nie znaleziono testu o podanym ID: " + testID);
			}
			System.out.println("[getResults]: Pobieranie wyników testu o ID " + testID);
			return stm; // Tymczasowo zwracamy bieżący obiekt stm
		} catch (Exception e) {
			System.out.println("[getResults]: Błąd podczas pobierania wyników testu: " + e.getMessage());
			return null;
		}
	}


	@Override
	public List<Sensor> getSensors(int clientID) {
		try {
			Client client = db.getClients().get(clientID);
			if (client == null) {
				System.out.println("[getSensors]: Nie znaleziono sensorów dla klienta o ID " + clientID);
				return null;
			}
			List<Sensor> baza = db.getSensors();
			List<Sensor> clients = new ArrayList<>();

			if (baza == null) {
				System.out.println("[getSensors]: Nie znaleziono listy czujników w bazie ");
				return null;
			}

			for (Sensor s: baza) {
				if(s.getClient().getID() == clientID){
					clients.add(s);
				}
			}
			return clients;

		} catch (Exception e) {
			System.out.println("[getSensors]: Błąd podczas pobierania sensorów: " + e.getMessage());
			return null;
		}
	}
}