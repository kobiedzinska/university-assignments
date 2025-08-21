package Prezenter;

import Model.Petition;
import Prezenter.Application.*;

import java.sql.ClientInfoStatus;

public class Main {

	public static void main(String[] args){
		logAsUser();
		PresenterUser client = new PresenterUser();
		//Petition petition = client.createPetition("Serwis");
		//client.getSystem().checkPetition();


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