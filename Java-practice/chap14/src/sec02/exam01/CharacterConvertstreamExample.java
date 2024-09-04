package sec02.exam01;
/*
 75강 문자 변환 보조스트림
 */
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.io.Reader;
import java.io.Writer;

public class CharacterConvertstreamExample {

	public static void main(String[] args) throws Exception {
		write("문자변환 스트링을 사용합니다.");												//write 메소드가 호출됨. 파일로 저장
		String data = read();														//파일로 부터 읽음.
		System.out.println(data);													//출력
		
	}
	public static void write(String str) throws Exception {
		FileOutputStream fos = new FileOutputStream("C:/SelfPractice/test1.txt");	// 매개값으로 받은 문자열 저장. FileOUtputStream은 바이트 기반으로 저장하나, 변수가 문자열
		Writer writer = new OutputStreamWriter(fos);								//이전에 배운대로라면, 바이트 타입 배열을 선언해서 거기에 저장했겠지만, 보조 스트림 OutputStreamWriter사용으로 해결 
		//OutputStreamWriter는 문자기반 스트림, writer를 상속받아 만들어진 스트림이지만, 부모타입으로 타입변환되어 문자열 대입가능
		writer.write(str);
		writer.flush();
		writer.close();
		
	}
	public static String read() throws Exception {
		FileInputStream fis = new FileInputStream("C:/SelfPractice/test1.txt");		//FileInputStream은 바이트기반 바이트를 읽는 입력스트림.
		Reader reader = new InputStreamReader(fis);									//InputStreamReader는 Reader를 상속받음. 따라서 Reader타입으로 선언가능
		char[] buffer = new char[100];												//길이 100짜리 char배열 
		int readCharNum = reader.read(buffer);										//실제로 읽은 문자 수 리턴
		reader.close();
		String data = new String(buffer, 0, readCharNum);
		return data;
	}

} 
