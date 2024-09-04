package sec01.exam08;

public class User2 extends Thread {
	private Calculator calculator;			
		
		public void setCalculator(Calculator calculator) {		
			this.setName("User1");								
			this.calculator = calculator;
		}
		
		public void run() {
			calculator.setMemory(50);							
		}
}
