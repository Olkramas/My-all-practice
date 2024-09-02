package sec01.exam21;
//61강 
/*
 String.valueOf(); 괄호안의 기본타입을 String 타입으로 변환한다.
 */
public class StringValueOfExample {

	public static void main(String[] args) {
		
		String str1 = String.valueOf(10);			//정수타입
		String str2 = String.valueOf(10.5);			//실수타입	
		String str3 = String.valueOf(true);			//불리언타입

		System.out.println(str1);
		System.out.println(str2);
		System.out.println(str3);
		
	}

}
