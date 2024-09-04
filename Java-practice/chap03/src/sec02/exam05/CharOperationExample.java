package sec02.exam05;

public class CharOperationExample {

	public static void main(String[] args) {
		char c1 = 'A' + 1;
		char c2 = 'A';
		int c3 = c2 + 1; //char로 하면 컴파일 에러 그래서 int로 바꿔줌
		
		System.out.println(c1);
		System.out.println(c2);
		System.out.println(c3);
		

	}

}
//16강