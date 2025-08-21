package Prezenter.Application;

import Model.Enumeration.PetitionStatus;
import Model.Enumeration.PetitionType;
import Model.Petition;
import Prezenter.Strategies.CheckStrategy;
import Prezenter.Strategies.*;

import java.util.HashMap;
import java.util.Map;

public class SystemChecker extends Proofreader {
	private final Map<PetitionType, CheckStrategy> strategies = new HashMap<>();

	public SystemChecker() {
		// Rejestracja dostępnych strategii
		strategies.put(PetitionType.ANULOWANIE_UMOWY, new PetitionCancelCheck());
		strategies.put(PetitionType.INSTALACJA, new PetitionInstallCheck());
		strategies.put(PetitionType.SERWIS, new PetitionServiceCheck());
	}
	public void directToImprove(Petition petition) {
		// TODO - implement System.directToImprove
		//status = "odrzucony"

		// wyświetl użytkownikowni, że jego wniosek jest błędny ?

		throw new UnsupportedOperationException();
	}

	public void checkPetition(Petition petition) {
		// TODO - implement System.checkPetition
		if(petition==null){
			throw new IllegalArgumentException("Wniosek nie może być null");
		}
		PetitionType type = petition.getType();
		CheckStrategy strategy = strategies.get(type);

		if (strategy == null) {
			throw new IllegalArgumentException("No strategy found for petition type: " + type);
		}

		Boolean petitionGood = strategy.checkPetition(petition);

		if(petitionGood){
			petition.setPetitionStatus(PetitionStatus.ZWERYFIKOWANY);
		}
		else{
			petition.setPetitionStatus(PetitionStatus.ODRZUCONY);
			directToImprove(petition);
		}
	}

}