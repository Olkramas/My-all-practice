package sec04.exam03;

public class ContinueKeyCodeReadExample {

	public static void main(String[] args) throws Exception{
		
		int keyCode;
		
		System.out.println("실행");
		
		while(true) {
			
			keyCode = System.in.read();
			System.out.println("keyCode: " + keyCode);
		}

	}

}
//14강