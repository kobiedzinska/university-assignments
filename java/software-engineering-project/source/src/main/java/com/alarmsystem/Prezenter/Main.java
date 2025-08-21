package com.alarmsystem.Prezenter;

import com.alarmsystem.Model.Client;
import com.alarmsystem.Model.DataBase.DataBase;
import com.alarmsystem.Model.Enumeration.PetitionType;
import com.alarmsystem.Model.Petition;
import com.alarmsystem.Prezenter.Application.*;
import com.alarmsystem.Widok.ZarzadzanieWidokiem.PVClient;


import javax.xml.crypto.Data;
import java.sql.ClientInfoStatus;

public class Main {

	public static void main(String[] args){
		logAsUser();
		PresenterUser presenter = new PresenterUser("Jasiek", "Jasieniu","jasieniek@gmail.com", "04242304704");
		Client client = presenter.getClientPresenter();

		presenter.getDb().add(client,Client.class);
		int ID = client.getID();
		System.out.println(ID);

		PVClient clientView = new PVClient(presenter);
		int petitionID = presenter.createPetition(ID, PetitionType.SERWIS, "Opis");
		System.out.println(petitionID);

		//presenter.getSystem().checkPetition(petitionID);
		clientView.showPetitions(ID);
		//clientView.updatePetition(ID);
	}
	private Presenter presenter;

	private static void logAsUser() {
		// TODO - implement Main.logAsUser
		System.out.println("Zalogowano się jako klient!");
		//throw new UnsupportedOperationException();
	}

	private static void logAsEmployee() {
		// TODO - implement Main.logAsEmployee
		throw new UnsupportedOperationException();
	}

	private static void createPresenterUser() {
		// TODO - implement Main.createPresenterUser
		throw new UnsupportedOperationException();
	}

	private static void createPresenterEmployee() {
		// TODO - implement Main.createPresenterEmployee
		throw new UnsupportedOperationException();
	}

}