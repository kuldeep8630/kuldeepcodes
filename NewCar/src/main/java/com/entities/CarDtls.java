package com.entities;

public class CarDtls {
		private int carId;
		private String driver;
		private String carname;
		private String seats;
		private String fueltype;
		private String numplate;
		private String status;
		private String price;
		private String photoName;
		private String user_email;
		public CarDtls() {
			super();
			
		}
		public CarDtls(String driver, String carname, String seats, String fueltype, String numplate, String status,
				String price, String photoName, String user_email) {
			super();
			this.driver = driver;
			this.carname = carname;
			this.seats = seats;
			this.fueltype = fueltype;
			this.numplate = numplate;
			this.status = status;
			this.price = price;
			this.photoName = photoName;
			this.user_email = user_email;
		}
		public int getCarId() {
			return carId;
		}
		public void setCarId(int carId) {
			this.carId = carId;
		}
		public String getDriver() {
			return driver;
		}
		public void setDriver(String driver) {
			this.driver = driver;
		}
		public String getCarname() {
			return carname;
		}
		public void setCarname(String carname) {
			this.carname = carname;
		}
		public String getSeats() {
			return seats;
		}
		public void setSeats(String seats) {
			this.seats = seats;
		}
		public String getFueltype() {
			return fueltype;
		}
		public void setFueltype(String fueltype) {
			this.fueltype = fueltype;
		}
		public String getNumplate() {
			return numplate;
		}
		public void setNumplate(String numplate) {
			this.numplate = numplate;
		}
		public String getStatus() {
			return status;
		}
		public void setStatus(String status) {
			this.status = status;
		}
		public String getPrice() {
			return price;
		}
		public void setPrice(String price) {
			this.price = price;
		}
		public String getPhotoName() {
			return photoName;
		}
		public void setPhotoName(String photoName) {
			this.photoName = photoName;
		}
		public String getUser_email() {
			return user_email;
		}
		public void setUser_email(String user_email) {
			this.user_email = user_email;
		}
		@Override
		public String toString() {
			return "CarDtls [carId=" + carId + ", driver=" + driver + ", carname=" + carname + ", seats=" + seats
					+ ", fueltype=" + fueltype + ", numplate=" + numplate + ", status=" + status + ", price=" + price
					+ ", photoName=" + photoName + ", user_email=" + user_email + "]";
		}
		
		
		
		
		
		
		
		
		
}
