package sec02.exam05;
//77강
import java.io.*;

public class PrintStreamExample {

	public static void main(String[] args) throws Exception {
		FileOutputStream fos = new FileOutputStream("C:/SelfPractice/printstrem.txt");
		PrintStream ps = new PrintStream(fos);											//바이트 기반
		//PrintWriter pw 문자기반 출력
		
		ps.println("[프린터 보조 스트림]");
		ps.print("마치");
		ps.println("트린터가 출력하는 것처럼");
		ps.println("데이터를 출력합니다.");
		
		ps.flush(); ps.close();
		

	}

}
 