package sec05.exam01;
//34강 인스턴스멤버
public class Car {
	//Field
	String model;
	int speed;
	
	//Constructor
	Car(String model) {
		this.model = model;
	}
	
	//Method
	void setSpeed(int speed) {
		this.speed = speed;
	}
	
	void run() {
		for(int i=10; i<=50; i+=10) {
			this.setSpeed(i);
			System.out.println(this.model + "가 달립니다.(시속: " + this.speed + "km/h)"); //필드인것을 강조하기 위해 this.를 붙일수있음 없어도 됨.
		}
	}
	
}
