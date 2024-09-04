package sec02.exam04;

public class PrintThread extends Thread{
	public void run() {
			while(true) {
				System.out.println("실행중");				
				if(Thread.interrupted()) {		//.interrupted = isInterrupted 똑같이 사용가능.
					break;
				}
			}
		
			System.out.println("자원종료");
			System.out.println("실행종료");
	}
}
