package sec01.exam08;

public class Calculator {
	private int memory;
	
	public int getMemory() {
		return memory;
	}
	
	public synchronized void setMemory(int memory) {								//user1,2가 이 메소드를 사용하게 됨. 동기화 메소드로 바꿔서 1,2가 번갈아가며 사용할 수 있게 만들기.
		this.memory = memory;														
		try {
			Thread.sleep(2000);														
		} catch (InterruptedException e) {}
		System.out.println(Thread.currentThread().getName() + ":" + this.memory);	
	}
}
