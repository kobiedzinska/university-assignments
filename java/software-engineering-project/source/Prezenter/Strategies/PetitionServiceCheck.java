package Prezenter.Strategies;

import Model.*;

import java.awt.image.BufferedImage;
import java.util.List;

public class PetitionServiceCheck implements CheckStrategy {

	/**
	 * @param petition
	 * @return
	 */
	public Boolean checkPetition(Petition petition) {
		// TODO - implement PetitionDeleteCheck.checkPetition
		Boolean good = false;
		if (petition instanceof PetitionService){

			PetitionService petition1 = (PetitionService) petition;

			String data1 = petition1.getProblemDescription();
			List<String> data2 = petition1.getSensorList();
			BufferedImage data3 = petition1.getPhoto();

			if (data1 == null){
				throw new IllegalStateException("Petition (id:"+petition.getID()+" has no description set!");
			}
			else if (data2 == null){
				throw new IllegalStateException("Petition (id:"+petition.getID()+" has no sensor list set!");
			}
			else if (data3 == null){
				throw new IllegalStateException("Petition (id:"+petition.getID()+" has no image set!");
			}
			good = true;
		}

		return good;
	}

}