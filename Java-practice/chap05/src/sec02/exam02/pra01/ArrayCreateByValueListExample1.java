package sec02.exam02.pra01;

public class ArrayCreateByValueListExample1 {

	public static void main(String[] args) {
		int [] scores;
		scores = new int[] {89, 98, 90};
		int sum1 = 0;
		for(int i=0; i<scores.length; i++) {
			sum1 += scores[i];
		}
		System.out.println("총합: " + sum1);
		
		int sum2 = add(new int[] {});
		System.out.println("총합:" + sum2);
		
		
	}
	
	public static int add(int[] scores) {
		int sum2 = 0;
		for(int i=0; i<scores.length; i++) {
			sum2 += scores[i];
		}
		return sum2;
	}
}
