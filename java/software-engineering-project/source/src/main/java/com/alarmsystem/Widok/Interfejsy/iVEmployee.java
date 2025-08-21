package com.alarmsystem.Widok.Interfejsy;

import com.alarmsystem.Model.Petition;
import com.alarmsystem.Model.Sensor;
import com.alarmsystem.Model.TestResult;
import com.alarmsystem.Model.TestService.SensorTestManager;

import java.util.List;

public interface iVEmployee {

	void showAllSensors(List<Sensor> sensors);

	void showAllPetitions(List<Petition> petitions);

	void updateAllPetitions();

	void updateAllSensors();

	void showTestResults(List<SensorTestManager> sensorTestManagers);

}