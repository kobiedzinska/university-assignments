package com.alarmsystem.Model.TestService;

public class AlertService {

	private int alertCode;
	private boolean confirmation=false; // Potwierdzenie, że służby dostały kod

	public int generateCode() {
		int newCode = (int)(Math.random() * 199998 + 1);
		this.alertCode = newCode;
		confirmation = true;
		return this.alertCode;
	}

	public boolean getConfirmation() {
		return this.confirmation;
	}

	public int getAlertCode() {
		return this.alertCode;
	}

}