package com.alarmsystem.Prezenter.Application;

import com.alarmsystem.Model.Enumeration.PetitionStatus;
import com.alarmsystem.Model.Enumeration.PetitionType;
import com.alarmsystem.Model.Petition;
import com.alarmsystem.Model.PetitionInstall;
import com.alarmsystem.Prezenter.Strategies.CheckStrategy;
import com.alarmsystem.Prezenter.Strategies.*;
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
		petition.setPetitionStatus(PetitionStatus.ODRZUCONY);

		// do wyświetlenia coś we view? idk jeszcze
		throw new IllegalArgumentException("Invalid petition data!");
	}

	public void checkPetition(int petitionID) {
		Presenter presenter = null;
		Petition petition = presenter.getPetition(petitionID);
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