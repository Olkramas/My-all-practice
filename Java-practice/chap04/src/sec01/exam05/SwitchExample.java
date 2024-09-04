package sec01.exam05;

public class SwitchExample {

	public static void main(String[] args) {
		int num = (int)(Math.random()*6) + 1;
		
		switch(num) {
			case 1: // case 1은 변수값이 1일 경우 이걸 실행시킴
				System.out.println("주사위는 1번이 나왔습니다.");
				break;
			case 2:
				System.out.println("주사위는 2번이 나왔습니다.");
				break;
			case 3:
				System.out.println("주사위는 3번이 나왔습니다.");
				break;
			case 4:
				System.out.println("주사위는 4번이 나왔습니다.");
				break;
			case 5:
				System.out.println("주사위는 5번이 나왔습니다.");
				break;
			default:
				System.out.println("주사위는 6번이 나왔습니다.");
				break;
		}

	}

}
