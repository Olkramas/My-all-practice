package sec03.exam07;

public class PrimitiveAndStringConversationExample {

	public static void main(String[] args) {
		//문자를 기본으로
	
		int value1 = Integer.parseInt("10");
		double value2 = Double.parseDouble("3.14");
		boolean value3 = Boolean.parseBoolean("false");
		
		System.out.println(value1);
		System.out.println(value2);
		System.out.println(value3);
		
		//기본을 문자로
		
		String str1 = String.valueOf("10");
		String str2 = String.valueOf("3.14");
		String str3 = String.valueOf(true);
		
		System.out.println(str1);
		System.out.println(str2);
		System.out.println(str3);

		
		

	}

}
