package sec02.exam01;

public class SignOperatorExample {

	public static void main(String[] args) {
		
		int x = -100;
		int result1 = +x;
		int result2 = -x;
		
		System.out.println(result1);
		System.out.println(result2);
		
		byte b = 100;
		int result3 = -b; //int 타입 변수로 바뀌기 때문에 byte로 선언할 수 없음.
	}

}
//15강