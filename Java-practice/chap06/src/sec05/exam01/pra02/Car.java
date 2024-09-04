package sec05.exam01.pra02;

public class Car {
	String model;
	int speed;
	
	Car(String model) {
		this.model = model;
	}
	
	void setspeed(int speed) {
		this.speed =speed;
	}
	
	void run () {
		for(int i=0; i<=50; i+=10) {
			this.setspeed(i);
			System.out.println(model + "가 달립니다." + speed);
		}
	}
}
