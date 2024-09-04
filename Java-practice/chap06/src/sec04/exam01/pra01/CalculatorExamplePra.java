package sec04.exam01.pra01;

public class CalculatorExamplePra {

	public static void main(String[] args) {
		
		CalculatorPra myCalc = new CalculatorPra();
		
		myCalc.powerOn();
		
		int result1 = myCalc.plus(5, 6);
		System.out.println("result1: " + result1);
		
		int x = 9;
		int y = 3;
		
		double result2 = myCalc.devide(x, y);
		System.out.println("result2: " + result2);
		
		myCalc.powerOff();
	}

}
