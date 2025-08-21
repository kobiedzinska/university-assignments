package com.alarmsystem.Model;

import java.util.*;

public class Address {

	private String locality;
	private String postCode;
	private String houseNum;
	private Collection<String> apartmentNum;

	public String getLocality() {
		return this.locality;
	}

	public String getPostCode() {
		return this.postCode;
	}

	public String getHouseNum() {
		return this.houseNum;
	}

	public Collection<String> getApartmentNum() {
		return this.apartmentNum;
	}

	public Address() {
		// TODO - implement Address.Address
		throw new UnsupportedOperationException();
	}

	public void getAddress() {
		// TODO - implement Address.getAddress
		throw new UnsupportedOperationException();
	}

}