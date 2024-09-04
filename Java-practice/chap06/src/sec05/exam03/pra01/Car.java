package sec05.exam03.pra01;

public class Car {
	static int speed;
	
	static void run() {
		System.out.println(speed);
	}
	
	public static void main(String[] args) {
		
		speed = 60;
		run();
	}
}
