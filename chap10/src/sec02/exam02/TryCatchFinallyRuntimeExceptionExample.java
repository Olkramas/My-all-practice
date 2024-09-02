package sec02.exam02;

public class TryCatchFinallyRuntimeExceptionExample {

	public static void main(String[] args) {
		
		String data1 = null;
		String data2 = null;
		
		try {
			data1 = args[0];
			data2 = args[1];
		} catch (Exception e) {
			System.out.println("실행매개값의 수가 부족합니다.");
			return;
		}
		
		try { 													//try 가 예외가 발생하면 catch로 이동. 그리고 마지막 finally는 무조건 실행
			int value1 = Integer.parseInt(data1);				//catch는 try가 예외가 없으면 실행이 안됨 그리고 바로 finally를 실행
			int value2 = Integer.parseInt(data2);
			int result = value1 + value2;
			System.out.println(data1 + "+" + data2 + "=" + result);
		} catch (NumberFormatException e) {
			System.out.println("숫자로 변환할 수 없습니다.");
		} finally {
			System.out.println("다시 실행하세요.");
		}
	}

}
