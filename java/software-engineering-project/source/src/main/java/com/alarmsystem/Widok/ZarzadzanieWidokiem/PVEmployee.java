package com.alarmsystem.Widok.ZarzadzanieWidokiem;

import com.alarmsystem.Model.DataBase.DataBase;
import com.alarmsystem.Model.Petition;
import com.alarmsystem.Model.Sensor;
import com.alarmsystem.Model.TestResult;
import com.alarmsystem.Model.TestService.SensorTestManager;
import com.alarmsystem.Prezenter.Application.EmployeeP;
import com.alarmsystem.Prezenter.Application.PresenterEmployee;
import com.alarmsystem.Widok.Interfejsy.*;

import java.util.ArrayList;
import java.util.List;

public class PVEmployee implements iVEmployee, iVUser {

	public void showAllSensors(List<Sensor> sensors) {
		System.out.println("Lista wszystkich czujników");
		int count=1;
		for (Sensor s:sensors) {
			System.out.println(count +". Czujnik "+s.getSensorType() +" id:"+s.getId());
			System.out.println("	Status: "+s.checkStatus()+"\n");
			count++;
		}
	}
// Boże miej nas w opieceAZaxsasdcghhgfgit
	public void showAllPetitions(List<Petition> petitions) {
		System.out.println("Lista wszystkich wniosków");
		int count=1;
		for (Petition s: petitions) {
			System.out.println(count +". Wniosek o "+s.getType() +" id:"+s.getID());
			System.out.println("	Client: "+s.getPetitioner().getName()+" "+ s.getPetitioner().getSurname());
			System.out.println("	Adres: "+s.getPetitioner().getAddress());
			System.out.println("	Email: "+s.getPetitioner().getEmail());
			count++;
		}
	}

	public void updateAllPetitions() {
		// TODO - implement PVEmployee.updateAllPetitions
		throw new UnsupportedOperationException();
	}

	public void updateAllSensors() {
		// TODO - implement PVEmployee.updateAllSensors
		throw new UnsupportedOperationException();
	}

	@Override
	public void showTestResults(List<SensorTestManager> sensorTestManagers) {
		System.out.println("Lista wszystkich wyników testów");
		int count=1;
		for (SensorTestManager s: sensorTestManagers) {
			System.out.println(count +". Test  "+s.getTestID());
			for(int i=0; i<s.getSensorTestList().size(); i++){
				System.out.println("\tWynik "+ i);
				System.out.println("\t"+s.getSensorTestList().get(i).getSensorID());
				System.out.println("\t"+s.getSensorTestList().get(i).getTestTime());
				System.out.println("\t"+s.getSensorTestList().get(i).getStatus());
			}
			count++;
		}
	}

	/**
	 * 
	 * @param clientID
	 */
	public void showPetitions(int clientID) {
		PresenterEmployee emp = new PresenterEmployee();
		List<Petition> list =  emp.getPetitions(clientID);
		System.out.println("Lista wszystkich wniosków ");
		System.out.println("Klienta o ID: "+clientID);
		System.out.println(list.get(0).getPetitioner().getName()+" "+list.get(0).getPetitioner().getSurname());

		int count=1;
		for (Petition s: list) {
			System.out.println(count +". Wniosek o "+s.getType() +" id:"+s.getID());
			System.out.println("	Adres: "+s.getPetitioner().getAddress());
			System.out.println("	Email: "+s.getPetitioner().getEmail());
			count++;
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
		// TODO - implement PVEmployee.updatePetition
		throw new UnsupportedOperationException();
	}

	/**
	 * 
	 * @param clientID
	 */
	public void updateSensor(int clientID) {
		// TODO - implement PVEmployee.updateSensor
		throw new UnsupportedOperationException();
	}

	@Override
	public void notifyPetitionUpdate() {

	}

}