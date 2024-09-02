package sec01.exam07;

public class Calculator {
	private int memory;
	
	public int getMemory() {
		return memory;
	}
	
	public void setMemory(int memory) {
		this.memory = memory;														//외부에서 값을 받아 필드에 저장
		try {
			Thread.sleep(2000);														//이 코드를 실행하는 스레드를 2초간 일시정지
		} catch (InterruptedException e) {}
		System.out.println(Thread.currentThread().getName() + ":" + this.memory);	//정지가 풀리면 이를 실행함. 현재 이 코드를 실행한 스레드의 이름. 메모리에 저장된 값을 출력
	}
}
