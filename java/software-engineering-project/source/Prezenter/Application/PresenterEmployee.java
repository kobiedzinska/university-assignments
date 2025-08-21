package Prezenter.Application;

import Model.Client;
import Model.DataBase.DataBase;
import Model.Enumeration.PetitionType;
import Model.Factory.SensorFactory;
import Model.Sensor;
import Model.TestResult;
import Model.TestService.AlertService;
import Model.TestService.SensorTestManager;
import Widok.Interfejsy.*;
import jdk.incubator.vector.VectorOperators;

import java.util.List;

public class PresenterEmployee extends Presenter implements iPEmployee, iPUser {

	private EmployeeP employeeP;
	private SensorManagementPresenter smp;
	private SensorTestManager stm;
	private SystemChecker system;
	private DataBase db;
	public PresenterEmployee(){
		System.out.println("Connecting to the System ...");
		system = new SystemChecker();
		System.out.println("Connecting to the DataBase ...");
		db = new DataBase();
	}
	public String createPetition() {
		// TODO - implement PresenterEmployee.createPetition
		throw new UnsupportedOperationException();
	}

	@Override
	public int createPetition(String clientID, PetitionType type, String description) {
		throw new UnsupportedOperationException();
	}

	/**
	 * 
	 * @param petitionID
	 */
	public void editPetition(int petitionID) {
		// TODO - implement PresenterEmployee.editPetition
		throw new UnsupportedOperationException();
	}

	/**
	 * 
	 * @param petitionID
	 */
	public void deletePetition(int petitionID) {
		// TODO - implement PresenterEmployee.deletePetition
		throw new UnsupportedOperationException();
	}

	/**
	 * 
	 * @param clientID
	 */
	public void startTests(String clientID) {
		Client client = db.getClients().get(Integer.parseInt(clientID));
		List<Sensor> sensorList = client.getClientSensors();
		List<TestResult> sensorTestList = stm.getSensorTest();
		for(Sensor sensor : sensorList){
			String sensorID = sensor.getId();
			if(sensorID == null){
				throw new IllegalArgumentException("No sensor found.");
			}
			TestResult sensorTest = new TestResult(sensorID, 1999, 0);
			stm.createResults(sensorID);
			sensorTestList.add(sensorTest);
		}
		AlertService alertcode = stm.getAlertCode();
	}
}