package chap01;

import java.io.IOException;

public class QStopExample {

	public static void main(String[] args) throws IOException {
		int keyCode;
		
		while(true) {
			keyCode = System.in.read();
			System.out.println("keyCode: " + keyCode);
			if(keyCode == 113) {
				System.out.println("작동을 정지합니다.");
				break;
			}
		}
	}

}
