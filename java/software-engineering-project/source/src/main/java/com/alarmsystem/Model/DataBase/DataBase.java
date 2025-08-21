package com.alarmsystem.Model.DataBase;

import com.alarmsystem.Model.Interfejsy.*;
import com.alarmsystem.Model.Factory.*;
import com.alarmsystem.Model.*;
import com.alarmsystem.Model.TestService.*;
import com.alarmsystem.Model.Interfejsy.iPModel;

import java.util.ArrayList;
import java.util.HashMap;
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
	public <T> void add(T obj, Class<T> type) {
		if (obj == null || type == null) {
			throw new IllegalArgumentException("Object and type cannot be null");
		}

		if (type.equals(Sensor.class)) {
			if (obj instanceof Sensor) {
				Sensor sensor = (Sensor) obj;
				sensors.add(sensor);
				System.out.println("Dodano sensor o ID: " + sensor.getID());
			} else {
				throw new IllegalArgumentException("Obiekt nie jest typu Sensor");
			}
		}
		else if (type.equals(Petition.class)) {
			if (obj instanceof Petition) {
				Petition petition = (Petition) obj;
				petitions.add(petition);
				System.out.println("Dodano petycję o ID: " + petition.getID());
			} else {
				throw new IllegalArgumentException("Obiekt nie jest typu Petition");
			}
		}
		else if (type.equals(Client.class)) {
			if (obj instanceof Client) {
				Client client = (Client) obj;
				clients.add(client);
				System.out.println("Dodano klienta o ID: " + client.getID());
			} else {
				throw new IllegalArgumentException("Obiekt nie jest typu Client");
			}
		}
		else if (type.equals(Employee.class)) {
			if (obj instanceof Employee) {
				Employee employee = (Employee) obj;
				employees.add(employee);
				System.out.println("Dodano pracownika o ID: " + employee.getID());
			} else {
				throw new IllegalArgumentException("Obiekt nie jest typu Employee");
			}
		}
		else if (type.equals(SensorTestManager.class)) {
			if (obj instanceof SensorTestManager) {
				SensorTestManager test = (SensorTestManager) obj;
				tests.add(test);
				System.out.println("Dodano test o ID: " + test.getID());
			} else {
				throw new IllegalArgumentException("Obiekt nie jest typu SensorTestManager");
			}
		}
		else {
			throw new IllegalArgumentException("Nieobsługiwany typ: " + type.getSimpleName());
		}
	}

	public <T> T get(int ID, Class<T> type) {
		if (type == null) {
			throw new IllegalArgumentException("Type cannot be null");
		}

		if (type.equals(Sensor.class)) {
			if (sensors != null) {
				for (Sensor s : sensors) {
					if (s.getId() == ID) {
						return type.cast(s);
					}
				}
			}
		} else if (type.equals(Petition.class)) {
			if (petitions != null) {
				return type.cast(petitions.get(ID));
			}
		} else if (type.equals(Client.class)) {
			if (clients != null) {
				return type.cast(clients.get(ID));
			}
		} else if (type.equals(Employee.class)) {
			if (employees != null) {
				return type.cast(employees.get(ID));
			}
		} else {
			throw new IllegalArgumentException("Unknown type: " + type.getSimpleName());
		}

		return null;
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

	public void delete( int ID, String type) {

	}

	public List<Client> getClients() {
		return clients;
	}
	public List<Sensor> getSensors() {
		return sensors;
	}

	public List<Petition> getPetitions() {
		return petitions;
	}

	public int generatePetitionID() {
		int id = -1;
		System.out.println(petitions==null);
		id = petitions.size();
		System.out.println(id);
		id += 1;
		return id;
	}
	public int generateID(String type){
		int id = 1;
		if(type == "SensorTestManager"){
			id = tests.get(tests.size()-1).getTestID();
			id += 1;
		}
		return id;
	}
	public int generateClientID(){
		int id = 1;
		id = clients.get(clients.size()-1).getClientsID();
		id += 1;

		return id;
	}
}