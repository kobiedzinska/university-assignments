package com.alarmsystem.Prezenter.Strategies;

import com.alarmsystem.Model.*;

public interface CheckStrategy {

	/**
	 * @param petition
	 * @return
	 */
	Boolean checkPetition(Petition petition);
	Boolean mailValid(Client client);
	Boolean PESELvalid(Client client);
}