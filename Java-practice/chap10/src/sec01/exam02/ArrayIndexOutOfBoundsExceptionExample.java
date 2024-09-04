package sec01.exam02;
//53강
public class ArrayIndexOutOfBoundsExceptionExample {

	public static void main(String[] args) {
		int[] arr = {1, 2, 3};
		
		int result = arr[0] + arr[1];
		
		String data1 = args[0];//실행 메소드 매개변수의 인덱스는 아무 값도 저장돼있지 않기 때문에 같은 out of bounds에러가 출력됨
		String data2 = args[1];
		
		System.out.println(data1);
		System.out.println(data2);
		System.out.println(args.length);

	}

}
