package com.alarmsystem.Prezenter.Strategies;

import com.alarmsystem.Model.*;

import java.awt.image.BufferedImage;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

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
			Client petitioner = petition1.getPetitioner();
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
			if(mailValid(petitioner) && PESELvalid(petitioner)) good = true;
			else throw new IllegalStateException("Wrong data!");
		}

		return good;
	}
	public Boolean mailValid(Client client){
		String email = client.getEmail();
		if (email == null || email.isEmpty()) {
			return false;
		}
		Pattern pattern = Pattern.compile(email);
		Matcher matcher = pattern.matcher(email);

		return matcher.matches();
	};
	public Boolean PESELvalid(Client client){
		String PESEL = client.getPESEL();
		if (PESEL == null || !PESEL.matches("\\d{11}")) {
			return false;
		}
		int year = Integer.parseInt(PESEL.substring(0, 2));
		int month = Integer.parseInt(PESEL.substring(2, 4));
		int day = Integer.parseInt(PESEL.substring(4, 6));
		int[] weights = {9, 7, 3, 1, 9, 7, 3, 1, 9, 7};
		int checksum = 0;
		if (month > 40 && month < 53) {
			year += 2100;
			month -= 40;
		} else if (month > 20 && month < 33) { // 2000–2099
			year += 2000;
			month -= 20;
		} else if (month > 0 && month < 13){ // 1900–1999
			year += 1900;
		}
		for (int i = 0; i < 10; i++) {
			checksum += Character.getNumericValue(PESEL.charAt(i)) * weights[i];
		}
		int controlDigit = Character.getNumericValue(PESEL.charAt(10));
		return checksum % 10 == controlDigit;
	};
}