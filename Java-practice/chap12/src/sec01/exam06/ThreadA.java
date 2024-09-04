package sec01.exam06;

public class ThreadA extends Thread{
	
	public ThreadA () {
		setName("ThreadA");										//실행 클래스에서 객체를 생성할 때 스레드 이름을 바꿈. setName으로 설정가능.
	}
	
	@Override
	public void run() {											//실행 클래스에서 .start()이 run메소드를 불러옴.
		for(int i=0; i<2; i++) {
			System.out.println(getName() + "가 출력한 내용");		//getName 현재 스레드의 이름을 반환
		}
	}
}
