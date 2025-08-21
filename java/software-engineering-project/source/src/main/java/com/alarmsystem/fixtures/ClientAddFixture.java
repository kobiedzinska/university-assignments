package com.alarmsystem.fixtures;

import fit.ColumnFixture;
import com.alarmsystem.Model.Client;

import java.util.IllegalFormatCodePointException;

public class ClientAddFixture extends ColumnFixture {
    public Client client;
    int dane; // Przechowywać contractID Clienta, którego dodajemy
    public boolean dodajKlienta() throws IllegalFormatCodePointException {
        int s1 = liczbaKlientów();
        try{
            SetUp.client = new Client(dane);
            SetUp.database.add(SetUp.client,Client.class);
            int s2 = liczbaKlientów();
            return s1 != s2;
        } catch(IllegalFormatCodePointException e) {
        }
        return false;
    }

    public int liczbaKlientów() {
        return SetUp.database.getClients().size();
    }
}
