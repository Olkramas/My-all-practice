package sec04.exam01.pra01;

public class CalculatorPra {
	void powerOn() {
		System.out.println("전원을 킵니다.");
	}
	
	int plus(int x, int y) {
		int result = x + y;
		return result;
	}
	
	double devide(int x, int y) {
		double result = (double)x / y;
		return result;
	}
	
	void powerOff() {
		System.out.println("전원을 종료합니다.");
	}
}
