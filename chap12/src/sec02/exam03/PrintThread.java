package sec02.exam03;

public class PrintThread extends Thread{
	public void run() {
		try {
			while(true) {
				System.out.println("실행중");				//반복할 때 마다 1000분의 1초 쉬게 됨.
				Thread.sleep(1);						//interrupted메소드를 호출하게 되면 정지상태에서 예외(InterruptedException)가 발생하게 됨.
			}
		} catch(InterruptedException e) {}
		
		System.out.println("자원정리");
		System.out.println("실행종료");
	}
}
