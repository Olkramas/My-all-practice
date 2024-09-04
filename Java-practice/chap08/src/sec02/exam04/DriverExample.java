package sec02.exam04;

public class DriverExample {

	public static void main(String[] args) {
		
		Driver driver = new Driver();
		
		/* Bus bus = new Bus();
		Taxi taxi = new Taxi(); */
		
		driver.drive(new Bus());
		driver.drive(new Taxi());
		
		

	}

}
// Driver의 drive가 인터페이스Vehicle타입의 매개변수로 선정돼있음. 그래서 driver.drive()괄호 안에 어떤 구현객체도 넣을 수 있음.