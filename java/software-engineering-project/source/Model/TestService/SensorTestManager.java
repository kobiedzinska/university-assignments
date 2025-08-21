package Model.TestService;

import Model.*;
import jdk.incubator.vector.VectorOperators;

import java.util.ArrayList;
import java.util.List;

public class SensorTestManager {

	private int ID;
	private AlertService alertCode;
	private List<TestResult> sensorTest = new ArrayList<TestResult>();

	/**
	 * 
	 * @param sensorID
	 */
	public TestResult createResults(String sensorID) {
		TestResult newTest = new TestResult(sensorID);
		return newTest;
	}

	public List<TestResult> getSensorTest() {
		return sensorTest;
	}

	public int getTestID() {
		// TODO - implement SensorTestManager.getTestID
		throw new UnsupportedOperationException();
	}

	public AlertService getAlertCode() {
		alertCode.generateCode();
		return this.alertCode;
	}

}