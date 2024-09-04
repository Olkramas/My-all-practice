package sec04.exam02;

public class KeyCodeExample {

	public static void main(String[] args) throws Exception{ //read라는 메소드를 사용하면 자바에서는 에러남, 예외가 생김. 그래서 예외로 신청한다고 생각하기(그 예외를 모니터에 출력하고 끝내라! = throws Exception = 예외 처리코드)
		
		int keyCode;
		
		keyCode = System.in.read();
		System.out.println("keyCode: " + keyCode);
		
		keyCode = System.in.read();
		System.out.println("keyCode: " + keyCode);

		keyCode = System.in.read();
		System.out.println("keyCode: " + keyCode);
	}

}
