package sec02.exam05;

public class DaemonExample {

	public static void main(String[] args) {
		AutoSaveThread autoSaveThread = new AutoSaveThread();
		autoSaveThread.setDaemon(true);							//이 선언을 통해 autoSaveThread는 main스레드의 Daemon스레드가 되는것.
		autoSaveThread.start();
		
		try {
			Thread.sleep(3000);
		} catch(InterruptedException e) {}
		System.out.println("메인 스레드 종료");
	}

}
//메인 스레드가 종료되면 Daemon으로 설정한 스레드는 같이 종료됨.