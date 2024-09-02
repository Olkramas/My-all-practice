package lecture40.exam02;

public class SwitchValueExample {

	public static void main(String[] args) {
		String grade = "B";
		
		//java11이전 문법
		int score1 = 0;
		switch(grade) {
		case "A":
			score1 = 100;
			break;
		case "B":
			int result = 100-20;
			score1 = result;
			break;
		default:														//위에 case들이 실행이 안되면 마지막으로 default실행
			score1 = 60;
		}
		System.out.println(score1);

		//java12이후 문법
		int score2 = switch(grade) {
		case "A" -> 100;
		case "B" -> {
			int result = 100-20;										//연산식 들어가면 중괄호 열기
			yield result;												//yield로 grade에 값 저장
		}
		default -> 60;													//default 생략 불가능
		};
		System.out.println(score2);
	}

}
