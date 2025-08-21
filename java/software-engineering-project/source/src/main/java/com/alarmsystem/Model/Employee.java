package com.alarmsystem.Model;

import java.time.LocalDate;

public class Employee extends User {

	private String position;
	private LocalDate hireDate;

	/**
	 * 
	 * @param postion
	 * @param hireDate
	 */
	public Employee(int postion, int hireDate) {
		// TODO - implement Employee.Employee
		throw new UnsupportedOperationException();
	}

    public int getID() {
		return super.ID;
    }
}