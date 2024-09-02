package sec01.exam03;
//53강
public class ArrayIndexOutOfBoundsExceptionExample {

	public static void main(String[] args) {
		if(args.length == 2 ) {
			
		
		
		String data1 = args[0];
		String data2 = args[1];
		
		System.out.println(data1);
		System.out.println(data2);
		} else {
			System.out.println("두개의 실행매개값이 필요합니다.");
		}
		System.out.println(args.length);

	}

}
