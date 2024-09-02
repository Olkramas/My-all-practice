package sec01.exam07;

public class User1 extends Thread {
	private Calculator calculator;			//공유객체를 저장할 필드 선언
	
	public void setCalculator(Calculator calculator) {		//외부로부터 공유객체를 받아서 필드에 저장
		this.setName("User1");								//User1스레드의 이름 설정
		this.calculator = calculator;
	}
	
	public void run() {
		calculator.setMemory(100);							//User1 스레드가 실행하면 setMemory라고 하는 메소드를 호출함. 거기에 100을 줌
	}
	
	
}
