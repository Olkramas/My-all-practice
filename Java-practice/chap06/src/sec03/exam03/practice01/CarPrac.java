package sec03.exam03.practice01;

public class CarPrac {
	//Field
	String company = "현대자동차";
	String model;
	String color;
	int maxSpeed;
	
	//Constructor
	CarPrac() {
	}
	CarPrac(String model) {
		this.model = model;
	}
	CarPrac(String model, String color) {
		this.model = model;
		this.color = color;
	}
	CarPrac(String model, String color, int maxSpeed) {
		this.model = model;
		this.color = color;
		this.maxSpeed = maxSpeed;
	}

}
