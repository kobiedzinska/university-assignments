package Model.DataBase;

import Model.Interfejsy.*;
import Model.Factory.*;
import Model.*;
import Model.TestService.*;

import java.util.ArrayList;
import java.util.List;

public class DataBase implements iPModel {

	private SensorFactory sensorFactory;
	private List<Petition> petitions = new ArrayList<Petition>();
	private List<Client> clients = new ArrayList<Client>();
	private List<Employee> employees = new ArrayList<Employee>();
	private List<SensorTestManager> tests = new  ArrayList<SensorTestManager>();
	private List<Sensor> sensors = new ArrayList<Sensor>();

	/**
	 * 
	 * @param obj
	 * @param type
	 */
	public void add(Object obj, String type) {
		// TODO - implement DataBase.add
		throw new UnsupportedOperationException();
	}

	/**
	 * 
	 * @param obj
	 * @param type
	 */
	public void edit(Object obj, String type) {
		// TODO - implement DataBase.edit
		throw new UnsupportedOperationException();
	}

	/**
	 * 
	 * @param obj
	 * @param type
	 */
	public void delete(Object obj, String type) {
		// TODO - implement DataBase.delete
		throw new UnsupportedOperationException();
	}

	public List<Client> getClients() {
		return clients;
	}

	public List<Petition> getPetitions() {
		return petitions;
	}

	public int generatePetitionID() {
		int noweID = petitions.get(petitions.size()).getID();
		noweID += 1;
		return noweID;
	}
}