package sec02.exam11;

public class Practice {

	public static void main(String[] args) {
		
		int score = 90;
		String grade = (score > 90) ? "" : ((score > 80) ? "" : "");
		System.out.println(score + grade);
		
		int score1 = 91;
		int grade1 = (score1 > 90) ? 100 : ((score1 > 80) ? 101 : 102);
		System.out.println("" + score1 + "" + "" + grade1 + "");

	}

}
