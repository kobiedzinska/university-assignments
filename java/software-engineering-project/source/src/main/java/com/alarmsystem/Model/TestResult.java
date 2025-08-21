package com.alarmsystem.Model;

import java.time.LocalTime;

public class TestResult {

	private int sensorID;

	private LocalTime testTime;
	private Sensor sensor;
	private Boolean status; //status testu

	public TestResult(Sensor sensor) {
		sensorID = sensor.getId();
		testTime = LocalTime.now();
		if(sensor.checkStatus()=="turnedOn,connected"){
			status = true;
		}else{
			status = false;
		}
	}
	public Boolean getStatus() {
		return status;
	}
	public int getSensorID() {
		return sensorID;
	}
	public LocalTime getTestTime() {
		return testTime;
	}
}