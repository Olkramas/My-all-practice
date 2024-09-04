package sec01.exam06;
//73강
import java.io.FileInputStream;
import java.io.InputStream;

public class ReadExample {

	public static void main(String[] args) throws Exception {
		InputStream is = new FileInputStream("C:/SelfPractice/test2.db");
		
		byte[] buffer = new byte[5];
		
		int readByteNum = is.read(buffer, 2, 3);
		System.out.println(buffer.length);
		System.out.println(readByteNum);
		if(readByteNum != -1) {
			for(int i=0; i<buffer.length; i++) {
				System.out.println(buffer[i]);
			}
		}
	
		
		is.close();
	}

}
