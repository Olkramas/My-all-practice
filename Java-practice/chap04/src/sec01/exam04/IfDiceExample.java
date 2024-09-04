package sec01.exam04;

public class IfDiceExample {

	public static void main(String[] args) {
		//(Math.random();  // Math.random() == 0-1사이의 실수를 리턴함
		int num = (int)(Math.random()*6) + 1;
		
		if(num == 1) {
			System.out.println("주사위의 숫자는 " + num + "입니다.");
		} else if(num == 2) {
			System.out.println("주사위의 숫자는 " + num + "입니다.");
		} else if(num == 3) {
			System.out.println("주사위의 숫자는 " + num + "입니다.");
		} else if(num == 4) {
			System.out.println("주사위의 숫자는 " + num + "입니다.");
		} else if(num == 5) {
			System.out.println("주사위의 숫자는 " + num + "입니다.");
		} else {
			System.out.println("주사위의 숫자는 " + num + "입니다.");
		}
		
		
	}

}
