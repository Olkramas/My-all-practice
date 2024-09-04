package sec04.exam03;

public class Car {
	//Field
	int gas;
	
	//Constructor
	
	//Method
	void setGas(int gas) { //set = 변경하다, gas필드를 변경하는 메소드()안은 어떻게 변경하겠다를 넣기
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
				System.out.println("달립니다.(기름잔량: " + gas + ")");
				gas -= 1;
			} else {
				System.out.println("동작을 정지합니다. (기름잔량: " + gas + ")");
				return;
			}
		}
	}
	
}
