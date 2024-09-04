package sec04.exam04;

public class QStopExample {

public static void main(String[] args) throws Exception{
		
		int keyCode;
		
		System.out.println("실행");
		
		while(true) {
			keyCode = System.in.read();
			System.out.println("keyCode: " + keyCode);
			
			if(keyCode == 113) {
				break;
			}
		}
		System.out.println("종료");
	}

}
//14강