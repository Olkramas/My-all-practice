package sec01.exam18;
//61강 문자열 잘라내기
public class StringSubStringExample {

	public static void main(String[] args) {
		
		String ssn = "880815-1234567";
		String firstNum = ssn.substring(0, 6);		//인덱스 0번부터 6번까지 변수로 저장
		System.out.println(firstNum);
		
		String secondNum = ssn.substring(7);
		System.out.println(secondNum);

	}

}
