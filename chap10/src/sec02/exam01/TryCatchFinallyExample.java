package sec02.exam01;

public class TryCatchFinallyExample {

	public static void main(String[] args) {
		/*
		String str = null;
		System.out.println(str.length()); //RuntimeException이라 실행전까지는 모름
		*/
		
		
		try {
			Class clazz = Class.forName("java.lang.String");
			System.out.println("정상실행");
		} catch (ClassNotFoundException e) {
			System.out.println("클래스가 존재하지 않습니다.");
		}

	}

}
