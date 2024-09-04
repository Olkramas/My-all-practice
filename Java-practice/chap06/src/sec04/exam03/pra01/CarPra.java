package sec04.exam03.pra01;

public class CarPra {
	//Field
	int gas;
	
	//Constructor
	
	//Method
	void setGas(int gas) {
		this.gas = gas;
	}
	
	boolean isLeftGas() {
		if(gas == 0) {
			System.out.println("연료가 없습니다.");
			return false;
		}
		System.out.println("연료가 있습니다.");
		return true;
	}
	
	void run() {
		while(true) {
			if(gas > 0) {
				System.out.println("달립니다");
				gas -= 1;
			} else {
				System.out.println("정지합니다.");
				return;
			}
		}
	}

}
