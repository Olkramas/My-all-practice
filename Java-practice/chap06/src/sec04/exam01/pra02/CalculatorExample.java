package sec04.exam01.pra02;

public class CalculatorExample {

	public static void main(String[] args) {
		Calculator myCalc = new Calculator();
		
		myCalc.powerOn();
		
		int result1 = myCalc.plus(5, 5);
		System.out.println(result1);
		
		byte x = 10;
		byte y = 2;
		double result2 = myCalc.devide(x, y);
		System.out.println(result2);
		
		myCalc.powerOff();

	}

}
