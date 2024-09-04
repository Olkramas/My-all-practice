package sec03.exam05;

public class OperationPromotionExample {

	public static void main(String[] args) {
		
		byte byteValue1 = 10;
		byte byteValue2 = 20;
		int intValue1 = byteValue1 + byteValue2;
		//byte byteValue3 = byteValue1 + byteValue2; ---> int값으로 바뀜
		System.out.println(intValue1);
		
		char charValue1 = 'A';
		char charValue2 = 1;
		int intValue2 = charValue1 + charValue2;
		//char charValue3 = charValue1 + charValue2;
		System.out.println("유니코드: " + intValue2);
		System.out.println("출력문자: " + (char)intValue2);
		
		int intValue3 = 10;
		int intValue4 = intValue3 /4;
		System.out.println(intValue4);
		double doubleValue1 = (double)intValue3 / 4;
		System.out.println(doubleValue1);
		
		int x = 1;
		int y = 2;
		double result1 = (double)x / y;
		System.out.println(result1);
	}

}
