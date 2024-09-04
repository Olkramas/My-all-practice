package sec03.exam04.pra01;

public class CarPra {
	
	//Field
	String company = "현대자동차";
	String model;
	String color;
	int maxSpeed;
	
	//Constructor
	CarPra() {
	}
	CarPra(String model) {
		this(model, null, 0);
	}
	CarPra(String model, String color) {
		this(model, color, 0);
	}
	CarPra(String model, String color, int maxSpeed) {
		this.model = model;
		this.color = color;
		this.maxSpeed = maxSpeed;
	}
}
