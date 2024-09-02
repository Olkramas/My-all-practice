package sec01.exam24;

public class StringToPrimitiveValueExample {

	public static void main(String[] args) {
		
		int value1 = Integer.parseInt("10");			//문자열이 int타입으로 변환되어 변수에 저장됨.
		double value2 = Double.parseDouble("3.14"); 	//문자열이 double타입으로 변환되어 변수에 저장.
		boolean value3 = Boolean.parseBoolean("true"); 	//문자열 true가 boolean타입으로 변환됨.
		
		System.out.println(value1);
		System.out.println(value2);
		System.out.println(value3);

	}

}
