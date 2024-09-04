package sec01.exam03;

public class ComputerExample {

	public static void main(String[] args) {
		
		int r = 10;
		
		Calculator cal = new Calculator();
		System.out.println("cal 원의 면적 " + cal.areaCircle(r));
		
		Computer com = new Computer();
		System.out.println("com 원의 면적 " + com.areaCircle(r));
	}

}
