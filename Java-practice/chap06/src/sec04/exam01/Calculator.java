package sec04.exam01;
//31강
public class Calculator {
	
	void powerOn() {
		System.out.println("전원을 켭니다.");
	}
	
	int plus(int x, int y) {
		int result = x + y;
		return result;
	}// return은 어떤 메소드가 실행을 하고 결과값을 호출한 쪽으로 돌려준다.
	
	double devide(int x, int y) {
		double result = (double)x / (double)y; //둘중하나만 강제변환해도 ok
		return result;
	}
	void powerOff()	{
		System.out.println("전원을 종료합니다.");
	}
}

