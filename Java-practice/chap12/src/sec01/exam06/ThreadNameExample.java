package sec01.exam06;

public class ThreadNameExample {

	public static void main(String[] args) {
		Thread mainThread = Thread.currentThread();				//currentThread는 현재 이 코드를 실행하는 스레드의 참조를 얻게 됨.(메인의 참조)
		System.out.println("프로그램 시작 스레드 이름: " + mainThread.getName());
		
		ThreadA threadA = new ThreadA();
		System.out.println("작업스레드 이름: " + threadA.getName());	//getName현재 스레드의 이름 리턴
		threadA.start();

	}

}
