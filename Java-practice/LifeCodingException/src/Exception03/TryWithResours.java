package Exception03;

import java.io.FileWriter;
import java.io.IOException;

public class TryWithResours {

	public static void main(String[] args) {
		try(FileWriter f = new FileWriter("data.txt")) {
			f.write("Hello");
			//f.close(); close는 내부적으로 자체 실행되기때문에 없어도 됨
		} catch(IOException e) {
			e.printStackTrace();
		}
	
		
	}
			

}

//AutoCloseable 이라는 인터페이스를 가지고 있을때만 try-with-resours사용가능
//FileWriter는 가지고 있음. API documents에 검색해보기
//Exception2 CheckedException이랑 같은 코드임 비교해보기