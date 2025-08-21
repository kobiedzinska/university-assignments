package com.alarmsystem.Model;

import com.alarmsystem.Model.Interfejsy.*;
import com.alarmsystem.Model.Enumeration.*;

public class Sensor implements iSensor {

	private int ID = -1;

	public SensorType getSensorType() {
		return sensorType;
	}

	private SensorType sensorType  = SensorType.DEFAULT;
	private boolean statusActivity = false;
	private boolean statusOnline = false;
	private Address location;

	public Client getClient() {
		return client;
	}

	private Client client;
	public Sensor(int ID, SensorType sensorType, Client client){
		this.ID = ID;
		this.sensorType = sensorType;
		this.client = client;
		location = client.getAddress();
	}
	public Sensor(int ID, SensorType sensorType){
		this.ID = ID;
		this.sensorType = sensorType;
	}
	public void turnOffline() {
		statusOnline = false;
	}

	public void connectWifi() {
		statusOnline = true;
	}

	@Override
	public void switchOn() {
		statusActivity = true;
		statusOnline = true;
	}

	@Override
	public void turnOff() {
		statusActivity = false;
		statusOnline = false;
	}


	public String checkStatus() {
		if(statusActivity && statusOnline){
			return "turnedOn,connected";
		} else if (!statusActivity && statusOnline) {
			return "notWorkingProperly";
		} else if (statusActivity && !statusOnline) {
			return "turnedOn,unconnected";
		}
		else{
			return "turnedOff,unconnected";
		}
	}
	public int getId() {
		return ID;
	}

    public int getID() {
		return ID;
    }
}