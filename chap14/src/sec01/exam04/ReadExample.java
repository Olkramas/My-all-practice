package sec01.exam04;
//73강
import java.io.FileInputStream;
import java.io.InputStream;

public class ReadExample {

	public static void main(String[] args) throws Exception {
		InputStream is = new FileInputStream("C:/SelfPractice/test3.db");
		while(true) {
			int data = is.read();
			if(data == -1) break;											//다 가져와서 읽을게 없으면 read메소드는 -1을 출력
			System.out.println(data);
		}
		is.close();
	}

}
