package sec01.exam10;
/*
 60강 String 클래스
 */
public class ByteToStringExample {

	public static void main(String[] args) {
		
		byte[] bytes = {72, 101, 108, 108, 111, 32, 74, 97, 118, 97	};

		String str1 = new String(bytes);				//생성자의 매개값으로 바이트배열 제공, 그리고 받은 바이트 값들을 문자로 바꾸고 결합하여 스트링타입으로 만들게 됨.
		System.out.println(str1);
		
		String str2 = new String(bytes, 6, 4);			//6번째 인덱스부터 4개의 인덱스를 문자로 바꾸고 결합해라!
		System.out.println(str2);
	}

}
