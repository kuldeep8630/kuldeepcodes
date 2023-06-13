package com.DAO;

import java.util.List;

import com.entities.CarDtls;

public interface CarDAO  {

	public boolean addCars(CarDtls c);
	
	public List<CarDtls> getAllCars();
	
	public CarDtls getCarById(int id);  
	
	public boolean updateEditCars(CarDtls c);
	
	public boolean deleteCars(int id);
	
	/*
	 * public List<CarDtls> getNewCar();
	 * 
	 * public List<CarDtls> getRecentCar();
	 * 
	 * public List<CarDtls> getOldCar();
	 */
	
	public List<CarDtls> getAllNewCar(); 
	/*
	 * public List<CarDtls> getAllRecentCar();
	 * 
	 * public List<CarDtls> getAllOldCar();
	 */
	
}
