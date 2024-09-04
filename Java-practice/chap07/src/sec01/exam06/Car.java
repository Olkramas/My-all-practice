package sec01.exam06;

public class Car {
	//Field
	public int speed;
	
	//Consturctor
	
	//Method
	public void speedUp() {
		speed += 1;
	}
	public final void stop() {
		System.out.println("차를 멈춤");
		speed = 0;
	}
}
