package sec02.exam03;

public class VehicleExample {

	public static void main(String[] args) {
		Vehicle vehicle = new Bus();
		
		vehicle.run();
		//vehicle.checkFare(); -- 인터페이스 타입 변수를 버스타입으로 강제 타입변환하면 됨.
		
		Bus bus = (Bus) vehicle;
		bus.checkFare();

	}

}
