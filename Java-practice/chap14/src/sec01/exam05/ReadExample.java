package sec01.exam05;

import java.io.FileInputStream;
import java.io.InputStream;

public class ReadExample {

	public static void main(String[] args) throws Exception {
		InputStream is = new FileInputStream("C:/SelfPractice/test2.db");
		
		byte[] buffer = new byte[100];				//최대 100바이트 까지 읽을 수 있고 저장함.
		
		while(true) {
			int readByteNum = is.read(buffer);
			if(readByteNum == -1) break;
			for(int i=0; i<readByteNum; i++) {
				System.out.println(buffer[i]);
			}
		}
		is.close();
	}

}
