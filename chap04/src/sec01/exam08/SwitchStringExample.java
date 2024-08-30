package sec01.exam08;

public class SwitchStringExample {

	public static void main(String[] args) {
		String position = "과장";
		
		switch("과장") {
		case "부장":
			System.out.println("부장입니다.");
			break;
		case "과장":
			System.out.println("과장입니다.");
			break;
		default:
			System.out.println("사원입니다");
		
		}

	}

}
//18강