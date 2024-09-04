package sec02.exam05;

public class ThrowsExample {

	public static void main(String[] args) throws ClassNotFoundException { //메인에도 할 수 있음 아래 try catch가 없을경우 메인에서 불러와 사용하는건데, 그러면 jvm에서 처리함=오류 메시지 출력
		
		try {
			findClass();
		} catch (ClassNotFoundException e) {
			System.out.println("클래스가 존재하지 않습니다.");
			//원래 있던 e.printStackTrace();는 예외가 어디서 발생했는지 알려주는 코드
		}

	}
	
	public static void findClass() throws ClassNotFoundException {
		Class clazz = Class.forName("java.lang.String2");			//String2라는 클래스는 없어서 무조건 ClassNotFoundException이 발생함. 그러나 throws를 통해 이를 불러서 사용하는
																	//메소드에서 try catch를 해야됨. 8번줄 참고
		
	}
}
