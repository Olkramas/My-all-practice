package lecture40.exam02.pra;

public class Practice {

	public static void main(String[] args) {
		char grade = 'a';
		
		int score2 = switch(grade) {
			case 'a', 'A' -> 100;
			case 'b', 'B' -> {
				int result = 100-20;
				yield result;
			}
			default -> 60;
		};
		System.out.println(score2);
	}

}
