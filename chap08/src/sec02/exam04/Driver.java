package sec02.exam04;

public class Driver {
	public void drive(Vehicle vehicle) {
		if(vehicle instanceof Bus) {
			Bus bus = (Bus) vehicle;
			bus.checkFare();				//강제 타입변환이 제대로된지 확인하고 실행하면 이상한걸 바꾸는 실수는 안할 수 있음.
		}
		vehicle.run(); 						
	}
}
