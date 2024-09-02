package lecture40.exam02.pra;

public class Practice01 {

	public static void main(String[] args) {
		int grade = 1;
		
		int value = switch(grade) {
		case 1 -> 1;
		case 2 -> 2;
		default -> 3;
		};
		
		System.out.println(value + "등급 입니다.");
		

	}

}
