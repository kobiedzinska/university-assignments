package com.alarmsystem.fixtures;

import com.alarmsystem.Model.Client;
import com.alarmsystem.Model.Sensor;
import com.alarmsystem.Model.Enumeration.SensorType;
import com.alarmsystem.Model.TestService.SensorTestManager;
import fit.ColumnFixture;

import java.util.ArrayList;
import java.util.List;

public class SensorTestManagerFixture extends ColumnFixture {
    private SensorTestManager testManager;
    public int testId;
    public int sensorCount;
    public String sensorType = "DEFAULT";
    public int clientId = 1;

    public boolean utworzManagera() {
        // Sprawdzenie poprawności danych wejściowych
        if (testId <= 0 || sensorCount <= 0) {
            return false;
        }

        try {
            List<Sensor> sensors = new ArrayList<>();
            Client client = new Client(clientId);

            // Tworzymy zadaną liczbę sensorów
            for (int i = 0; i < sensorCount; i++) {
                Sensor sensor = new Sensor(i + 1, SensorType.valueOf(sensorType), client);
                sensor.switchOn();
                sensor.connectWifi();
                sensors.add(sensor);
            }

            testManager = new SensorTestManager(sensors, testId);
            // Sprawdzamy czy manager został poprawnie utworzony
            return testManager != null && testManager.getID() == testId;
        } catch (Exception e) {
            return false;
        }
    }

    public boolean wykonajTesty() {
        if (testManager == null) {
            return false;
        }
        try {
            testManager.createResults();
            return testManager.getSensorTestList().size() == sensorCount;
        } catch (Exception e) {
            return false;
        }
    }

    public boolean sprawdzKodAlarmowy() {
        if (testManager == null) {
            return false;
        }
        try {
            int kod = testManager.getAlertCode();
            return kod > 0 && kod <= 200000;
        } catch (Exception e) {
            return false;
        }
    }

    public int pobierzIdTestu() {
        return testManager != null ? testManager.getTestID() : -1;
    }

    public int pobierzLiczbeTestow() {
        return testManager != null ? testManager.getSensorTestList().size() : 0;
    }

    public String sprawdzStatusSensorow() {
        if (testManager == null || testManager.getSensorTestList().isEmpty()) {
            return "brak_testow";
        }
        try {
            return testManager.getSensors().get(0).checkStatus();
        } catch (Exception e) {
            return "brak_testow";
        }
    }
}