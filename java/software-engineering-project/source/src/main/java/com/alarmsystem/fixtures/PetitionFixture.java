package com.alarmsystem.fixtures;

import com.alarmsystem.Model.Client;
import com.alarmsystem.Model.Enumeration.PetitionStatus;
import com.alarmsystem.Model.Enumeration.PetitionType;
import com.alarmsystem.Model.Petition;
import com.alarmsystem.Model.PetitionInstall;
import fit.ColumnFixture;

import java.util.IllegalFormatCodePointException;

public class PetitionFixture extends ColumnFixture {
    public PetitionInstall petition;
    int dane; // Przechowywać contractID Clienta, którego dodajemy
    int liczba; // liczba Wniosków

    public boolean dodajPetycje() throws IllegalFormatCodePointException {
        int s1 = liczbaPetycji();
        try{
            SetUp.client = new Client(dane);
            SetUp.database.add(SetUp.client,Client.class);
            for(int i=0; i <liczba; i++){
                PetitionInstall petition = new PetitionInstall(SetUp.client, PetitionType.INSTALACJA, PetitionStatus.DEFAULT);
                SetUp.database.add(petition, Petition.class);
            }
            int s2 = liczbaPetycji();
            return s1 != s2;
        } catch(IllegalFormatCodePointException e) {
        }
        return false;
    }

    public int liczbaPetycji() {
        return SetUp.database.getPetitions().size();
    }
}
