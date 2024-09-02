package sec01.exam01;
/*
자바 기초강의 137강 Thread 기초 개념
 */
public class MainThreadExample {

	public static void main(String[] args) {
		System.out.println("시작");
		
		Thread currentThread = Thread.currentThread();			//currentThread라는 메소드는 정적메소드라 이 방식으로 Thread클래스의 객체 생성
		System.out.println(currentThread.getName());			//현재 코드를 실행하는 현재 스레드의 이름을 얻기
		
		
		
		System.out.println("종료");
		

	}

}
