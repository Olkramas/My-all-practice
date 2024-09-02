package sec01.exam04;
//53강
public class NumberFormatExceptionExample {

	public static void main(String[] args) {
		
		String data1 = "100";
		String data2 = "A100";
		
		int value1 = Integer.parseInt(data1); //String 타입의 변수에 들어있는 값을 int 타입으로 바꿔줌
		System.out.println(value1);
		
		int value2 = Integer.parseInt(data2); // A는 숫자로 변환할 수 없어서 Number format exception발생
		System.out.println(value2);
	}

}
