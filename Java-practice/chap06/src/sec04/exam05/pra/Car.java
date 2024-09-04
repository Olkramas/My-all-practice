package sec04.exam05.pra;

public class Car {
	//Field
	int speed;
	
	//Constructor
	
	//Method
	public int getSpeed() {
		return speed;
	}
	void keyTurnOn() {
		System.out.println("키를 돌립니다.");
	}
	void run() {
		for(int i=0; i<=50; i+=10) {
			speed = i;
			System.out.println("달립니다.(시속: " + speed + "km/h)");
		}
	}
	void nowSpeed() {
		System.out.println("현재속도: " + speed);
	}
}
