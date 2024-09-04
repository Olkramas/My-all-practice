package sec02.exam04;
//77강 기본타입 입출력 보조 스트림
import java.io.*;

public class DataInputOutputStreamExample {

	public static void main(String[] args) throws Exception{
		FileOutputStream fos = new FileOutputStream("C:/SelfPractice/primitive.db");
		DataOutputStream dos = new DataOutputStream(fos);
		
		dos.writeUTF("홍길동");
		dos.writeDouble(98.5);
		dos. writeInt(1);
		
		dos.writeUTF("최태백");
		dos.writeDouble(90.3);
		dos. writeInt(2);
		
		dos.flush(); dos.close(); 					//보조 스트림을 종료하면 다 종료됨.
		
		FileInputStream fis = new FileInputStream("C:/SelfPractice/primitive.db");
		DataInputStream dis = new DataInputStream(fis);
		
		for(int i=0; i<2; i++) {
			String name = dis.readUTF();
			double score = dis.readDouble();
			int order = dis.readInt();
			System.out.println(name + " : " + score + " : " + order);
		}
		
		dis.close();
	}
 
}
