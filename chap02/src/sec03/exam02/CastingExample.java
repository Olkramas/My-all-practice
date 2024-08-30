package sec03.exam02;

public class CastingExample {

	public static void main(String[] args) {
		
		int intValue = 44032;
		char charValue = (char)intValue;
		System.out.println("charValue: " + charValue);
		
		//파일의 사이즈를 조사해 내는 API를 사용할 때 API가 long 값으로 줌 그걸 int로 바꿀때 
		long longValue = 500;
		intValue = (int)longValue;
		System.out.println("intValue: " + intValue);
		
		double doubleValue = 3.14;
		intValue = (int)doubleValue;
		System.out.println("intValue: " + intValue);

	}

}
