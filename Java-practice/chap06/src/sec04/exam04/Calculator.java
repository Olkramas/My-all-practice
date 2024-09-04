package sec04.exam04;

public class Calculator {
	//Field
	//Constructor
	//Method
	int plus(int x, int y) {
		int result = x + y;
		return result;
	}
	
	double avg(int x, int y) {
		double sum = plus(x, y);
		double result = sum / 2;
		return result;
	}
	
	void execute() {
		double result = avg(7, 10);
		println("실행결과 " + result);
	}
	
	void println(String message) {
		System.out.println(message);
	}
}

//같은 클래스 안에서 매소드이름(매개값)으로 호툴가능