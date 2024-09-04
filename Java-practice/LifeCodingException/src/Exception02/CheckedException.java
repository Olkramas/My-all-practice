package Exception02;

import java.io.FileWriter;
import java.io.IOException;

public class CheckedException {

	public static void main(String[] args) {
		FileWriter f = null;
		try {
			f = new FileWriter("data.txt");
			f.write("Hello");
			
		} catch(IOException e) {
			e.printStackTrace();
		} finally { 
			if(f != null) {
				try {
					f.close();
				} catch (IOException e) {
					e.printStackTrace();
				}
			}
		}
	}

}
/*Checked Exception의 상황. 
 컴파일러가 미리 체크해서 빨간색으로 알려주는 예외 상황들.
 throws 나 Exception으로 예외 처리를 해줘야함! 무조건
 */