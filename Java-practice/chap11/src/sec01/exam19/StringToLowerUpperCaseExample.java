package sec01.exam19;
/*
 61강	.toLowerCase() toUpperCase() 둘 또한 원래의 문자열은 변경되지 않음. 새롭게 생김.
 * */
public class StringToLowerUpperCaseExample {

	public static void main(String[] args) {

		String str1 = "java programming";
		String str2 = "JAVA PROGRAMMING";
														
		System.out.println(str1.equals(str2));					//java는 대소문자를 구별하기 때문에 str1,2는 서로 다른 문자열로 인식합니다.
		
		String lowerStr1 = str1.toLowerCase();					//둘다 소문자로 바꾸기
		String lowerStr2 = str2.toLowerCase();
		
		System.out.println(lowerStr1.equals(lowerStr2));	 	//둘다 소문자로 바꿔서 true가 나오는 모습.
	}

}
