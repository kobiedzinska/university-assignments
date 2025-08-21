package Model;

import Model.Interfejsy.*;
import Model.Enumeration.*;

public class Sensor implements iSensor {

	private String ID;
	private SensorType sensorType;
	private int attribute;
	private boolean statusActivity;
	private boolean statusOnline;
	private Address location;
	private Client client;

	public void swtichON() {
		// TODO - implement Sensor.swtichON
		throw new UnsupportedOperationException();
	}

	public void turnOFF() {
		// TODO - implement Sensor.turnOFF
		throw new UnsupportedOperationException();
	}

	public void reset() {
		// TODO - implement Sensor.reset
		throw new UnsupportedOperationException();
	}

	@Override
	public void switchOn() {

	}

	@Override
	public void turnOff() {

	}

	public String checkStatus() {
		// TODO - implement Sensor.checkStatus
		throw new UnsupportedOperationException();
	}
	public String getId() {
		return ID;
	}
}