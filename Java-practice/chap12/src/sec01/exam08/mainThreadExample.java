package sec01.exam08;
/*
 65강
 멀티 스레드에서 공유객체를 사용할 때 주의점 --이를 해결하기 위해 동기화 메소드 사용
 */
public class mainThreadExample {

	public static void main(String[] args) {
		Calculator calculator = new Calculator();
		
		User1 user1 = new User1();
		user1.setCalculator(calculator);					//100저장하고 2초 쉼
		user1.start();
		
		User2 user2 = new User2();
		user2.setCalculator(calculator);					//50저장하고 2초 쉼.
		user2.start();
		

	}

}
