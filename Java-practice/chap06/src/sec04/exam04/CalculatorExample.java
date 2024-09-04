package sec04.exam04;

public class CalculatorExample {

	public static void main(String[] args) {
		
		Calculator myCalc = new Calculator();
		myCalc.execute();

	}

}
/*
 * 객체 외부에서 호출
 * 1. 클래스로부터 객체 생성(Calculator myCal = new Calculator();)
 * 2. 리턴값이 없거나 리턴값을 받지 않은 경우 8번째줄과 같이 적으면 됨(참조변수.메소드(매개값...))
 * 3. 리턴값이 있고, 리턴값을 받고싶을경우(타입변수 = 참조변수.메소드(매개값...))---> 변수선언이 우선돼야함!
*/