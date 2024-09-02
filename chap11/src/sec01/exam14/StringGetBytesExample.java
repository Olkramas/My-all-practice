package sec01.exam14;
//61강 String -> byte, byte -> String
import java.io.UnsupportedEncodingException;

public class StringGetBytesExample {

	public static void main(String[] args) {
		
		String str = "안녕하세요";
		
		byte[] bytes1 = str.getBytes();					//인코딩. getBytes는  str의 String값을 byte로 변환해 byte배열 bytes1에 리턴함.
		System.out.println(bytes1.length);				//byte배열의 길이
		
		String str1 = new String(bytes1);				//디코딩. byte를 문자열로 바꾸기
		System.out.println(str1);
		
		try {
			byte[] bytes2 = str.getBytes("EUC-KR");		//윈도우기본이랑 같음 ms949 = EUC-KR 동일한 문자셋! ======한글을 2바이트로 표현
			System.out.println(bytes2.length);
			String str2 = new String(bytes2,"EUC-KR");	//디코딩도 동일한 문자셋으로 해야됨.
			System.out.println(str2);
			
			byte[] bytes3 = str.getBytes("UTF-8");		//UTF-8은 한글을 3바이트로 표현
			System.out.println(bytes3.length);
			String str3 = new String(bytes3,"UTF-8");
			System.out.println(str3);
			
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
	}

}
