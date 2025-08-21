package com.alarmsystem.fixtures;

import com.alarmsystem.Model.Client;
import com.alarmsystem.Model.DataBase.DataBase;
import com.alarmsystem.Model.Enumeration.PetitionStatus;
import com.alarmsystem.Model.Enumeration.PetitionType;
import com.alarmsystem.Model.PetitionInstall;
import com.alarmsystem.Model.TestService.AlertService;
import fit.Fixture;

public class SetUp extends Fixture {
    static DataBase database;
    static PetitionInstall petitionInstall;
    static Client client;
    static AlertService alertService;
    public SetUp(){
        database = new DataBase();
        alertService = new AlertService();
        //client = new Client("Jan","Kowalsky","jan.kowalsky@gmail.com","01234567891");
        //petitionInstall = new PetitionInstall(client, PetitionType.INSTALACJA, PetitionStatus.DEFAULT);
        //petitionInstall.setDescription("Dajcie mi czujnik dymu. Proszę :( mam chorom curke");
    }
}
