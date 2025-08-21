package com.alarmsystem.Model;

import com.alarmsystem.Model.Factory.*;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

public class Client extends User {

	private List<Sensor> ownedSensors = new ArrayList<Sensor>();
	private Address address;
	private LocalDate contractDate;

	public void setContractID(int contractID) {
		this.contractID = contractID;
	}

	private int contractID;

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
	 *
	 * @param contractID
	 */
	public Client(int contractID) {
		this.contractID = contractID;
	}
	public Client(String name, String surname, String email, String PESEL) {

		super.setName(name);
		super.setPESEL(PESEL);
		super.setEmail(email);
		super.setSurname(surname);
	}
	public int getContractID() {
		return contractID;
	}

    public int getID() {
		return ID;
    }



}