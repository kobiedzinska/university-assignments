package Model.TestService;

public class AlertService {

	private int alertCode;
	private boolean confirmation;

	protected int generateCode() {
		int newCode = (int)(Math.random() * 199998 + 1);
		this.alertCode = newCode;
		return this.alertCode;
	}

	protected boolean getConfirmation() {
		return this.confirmation;
	}

	protected int getAlertCode() {
		return this.alertCode;
	}

}