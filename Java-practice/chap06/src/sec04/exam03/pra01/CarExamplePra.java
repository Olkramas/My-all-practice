package sec04.exam03.pra01;

public class CarExamplePra {

	public static void main(String[] args) {
		
		CarPra myCar = new CarPra();
		
		myCar.setGas(5);
		
		boolean gasState = myCar.isLeftGas();
		if(gasState) {
			System.out.println("출발합니다.");
			
		}
		if(myCar.isLeftGas()) {
			System.out.println("");
		}
	}

}
