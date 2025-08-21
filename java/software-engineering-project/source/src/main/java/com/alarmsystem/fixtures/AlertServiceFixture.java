package com.alarmsystem.fixtures;

import com.alarmsystem.Model.TestService.AlertService;
import fit.ColumnFixture;

public class AlertServiceFixture extends ColumnFixture {

    public boolean wygenerujKod() {
        int kod = SetUp.alertService.generateCode();
        return kod > 0 && kod <= 200000;  // Sprawdzamy czy kod jest w prawidłowym zakresie
    }

    public boolean sprawdzPotwierdzenie() {
        return SetUp.alertService.getConfirmation();
    }

    public boolean sprawdzKod() {
        int kod = SetUp.alertService.getAlertCode();
        return kod > 0 && kod <= 200000;
    }
}