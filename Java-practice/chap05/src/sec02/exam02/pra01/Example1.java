package sec02.exam02.pra01;

public class Example1 {

	public static void main(String[] args) {
		int sum1 = add(new int[] {70, 70, 70, 70});
		System.out.println(sum1);
		
		
	}
	public static int add(int[] scores) {
		int sum = 0;
		for(int i=0; i<scores.length; i++) {
			sum += scores[i];
		}
		return sum;
	}
}
