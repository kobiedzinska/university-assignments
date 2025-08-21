package Model;

import Model.Factory.*;

import java.util.ArrayList;
import java.util.List;

public class Client extends User {

	private List<Sensor> ownedSensors = new ArrayList<Sensor>();
	private Address address;
	private Date contractDate;
	private String contractID;
	private User clientUser;

	public SensorFactory getOwnedSensors() {
		return (SensorFactory) this.ownedSensors;
	}
	public List<Sensor> getClientSensors() {return ownedSensors;}

	public void setOwnedSensors(SensorFactory ownedSensors) {
		this.ownedSensors = (List<Sensor>) ownedSensors;
	}

	public Address getAddress() {
		return this.address;
	}

	/**
	 * 
	 * @param address
	 */
	public void setAddress(Address address) {
		this.address = address;
	}

	/**
	 * 
	 * @param contractDate
	 * @param contractID
	 */
	public Client(int contractDate, int contractID) {
		// TODO - implement Client.Client
	}

	public String getContractID() {
		return contractID;
	}
	// 	TODO - 	konstruktor, który po clientID (loginie) pobiera dane z bazyDanych


}