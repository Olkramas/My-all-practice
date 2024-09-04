package sec02.exam03;

import java.io.*;

public class ReadLimeExample {

	public static void main(String[] args) throws Exception {
		Reader reader = new FileReader(ReadLimeExample.class.getResource("language.txt").getPath()
				);
		
		BufferedReader br = new BufferedReader(reader);
		
		while(true)	{
			String data = br.readLine();		//여태 문자 하나씩 읽어서 느렸지만 이건 한줄씩 읽어서 훨씬 빠름.
			if(data == null) break;				//readLine은 읽을게 없으면 Null값을 리턴.
			System.out.println(data);
		}
		br.close();
	}

}
