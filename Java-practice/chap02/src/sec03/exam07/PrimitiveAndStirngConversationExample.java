package sec03.exam07;

public class PrimitiveAndStirngConversationExample {

	public static void main(String[] args) {
		
		//문자열을 기본 타입으로 강제변환
		String str1 = "10";
		int value1 = Integer.parseInt(str1);
		int value2 = Integer.parseInt("10");
		double value3 = Double.parseDouble("3.14");
		boolean value4 = Boolean.parseBoolean("true");
		
		System.out.println(value1);
		System.out.println(value2);
		System.out.println(value3);
		System.out.println(value4);
		
		int value5 = 10;
		String str2 = String.valueOf(value5);
		String str3 = String.valueOf(3.14);
		String str4 = String.valueOf(true);
		
		int value6 = 20;
		String str5 = "안녕" + String.valueOf(value6);
		
		System.out.println(str2);
		System.out.println(str3);
		System.out.println(str4);
		System.out.println(str5);
		
	} 

}
