package sec01.exam11;

import java.io.FileReader;
import java.io.Reader;

public class ReadExample {

	public static void main(String[] args) throws Exception{
		Reader reader = new FileReader("C:/SelfPractice/test7.txt");
		while(true) {
			int data = reader.read();									//문자 하나씩 읽고 리턴함, int값으로 읽었으니 나중에 타입변환해야됨.
			if(data == -1) break;
			System.out.println((char)data);								//(char)안붙이면 유니코드로 나옴
		}
		reader.close();

	}

}
