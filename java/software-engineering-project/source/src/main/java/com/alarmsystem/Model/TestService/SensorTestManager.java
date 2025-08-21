package com.alarmsystem.Model.TestService;

import com.alarmsystem.Model.*;

import java.util.ArrayList;
import java.util.List;

public class SensorTestManager {

	private int ID; // ID całego testu
	private AlertService alert; // kod dezaktywacyjny dla służb specjalnych CODE TO INT

	public List<Sensor> getSensors() {
		return sensors;
	}

	private List<Sensor> sensors; // lista z czujnikami
	private List<TestResult> sensorTestList = new ArrayList<TestResult>(); // lista wyników testów od sensorów
	public SensorTestManager(List<Sensor> sensors, int ID){
		alert = new AlertService();
		if(!sensors.isEmpty() && ID >0 ){
			this.sensors = sensors;
			this.ID = ID;
		}else if(sensors.isEmpty()){
			System.out.println("[SensorTestManager]: Przekazana lista sensorów jest nieprawidłowa lub pusta!");
		}else{
			System.out.println("[SensorTestManager]: Nieprawidłowe ID!");
		}
	}

	public void createResults() {
		if (sensors.isEmpty()){
			System.out.println("[createResults]: Warning! Nie wykonano testów, lista czujników pusta");
//			throw NullPointerException("");
		}else{
			int count = 0;
			for (Sensor sen: sensors) {
				TestResult newTest = new TestResult(sen);
				sensorTestList.add(newTest);
				count ++;
			}
			System.out.println("[createResults]: Wykonano testy dla liczby czujników :" + count);
		}
	}

	public List<TestResult> getSensorTestList() {
		return sensorTestList;
	}

	public int getTestID() {
		return this.ID;
	}

	public int getAlertCode() {
		alert.generateCode();
		int code = alert.getAlertCode();
		return code;
	}

	public int getID() {
		return ID;
	}
}