package lecture72;

public class Singleton {
	
	private static Singleton singleton = new Singleton();
	
	private Singleton() {}
	
	static Singleton getInstance()	{
		return singleton;
	}
}
/*
싱글톤의 조건 1. 클래스 내에 객체를 만듦. private으로 선언
	      2. 생성자도 private
	      3. 외부에서 값을 받아오기 위해 getInstance 메소드 선언, 객체 변수 값 리턴
	      
	      생성자가 private이라 생성자를 외부에서 불러올 수 없음.
	      
	      
*/