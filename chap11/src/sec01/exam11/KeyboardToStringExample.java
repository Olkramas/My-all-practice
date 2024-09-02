package sec01.exam11;
//60강 키보드로부터 입력받은 값인 바이트를 배열에 저장하고 String타입으로 변환하여 출력
public class KeyboardToStringExample {

	public static void main(String[] args) throws Exception {

		byte[] bytes = new byte[100]; 					//바이트 배열 선언. 인덱스 100번까지 있음.
		
		System.out.print("입력: ");
		int readByteNo = System.in.read(bytes);			//read라는 코드는 예외가 발생할 수 있음. 아직은 모르는 예외 /키보드로부터 데이터를 읽어 bytes 배열에 저장.
		
		String str = new String(bytes, 0, readByteNo-2);//0번 부터 입력받은 바이트 코드까지 문자열로 변환. 마지막-2는 엔터가 \r, \n을 포함해서 2바이트를 더 먹어서 그럼.
		System.out.println(str);
	}

}
