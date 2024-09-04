package sec01.exam17;
/*
 61강
 replace();메소드는 정말 중요한 포인트가 있음. 괄호 안 첫번째 문자열을 두번째로 바꾼다는 점인데,
 이는 원래의 변수에 있는 문자열을 바꾸는 것이 아닌, 새로운 String 변수에 바뀐 문자열을 저장한다는 점임.
 */
public class StringReplaceExample {

	public static void main(String[] args) {
		
		String oldStr = "자바는 객체 지향 언어입니다. 자바는 풍부한 API를 지원합니다.";
		String newStr = oldStr.replace("자바", "Java");
		System.out.println(oldStr);
		System.out.println(newStr);

	}

}
