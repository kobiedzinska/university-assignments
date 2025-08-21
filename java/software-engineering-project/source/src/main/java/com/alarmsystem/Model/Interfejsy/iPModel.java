package com.alarmsystem.Model.Interfejsy;

public interface iPModel {

	/**
	 * 
	 * @param obj
	 * @param type
	 */
	public <T> void add(T obj, Class<T> type);

	/**
	 * 
	 * @param obj
	 * @param type
	 */
	void edit(Object obj, String type);


	void delete(int ID, String type);

}