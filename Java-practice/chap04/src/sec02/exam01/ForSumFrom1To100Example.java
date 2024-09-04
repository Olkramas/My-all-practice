package sec02.exam01;

public class ForSumFrom1To100Example {

	public static void main(String[] args) {
		int sum = 0;
		
		for (int i=1; i<=100; i++) {
			sum = sum + i;
			
		}
		System.out.println("1-100까지의 총합: " + sum);
		
		//or
		
		int sum1 = 0;
		
		int x;
		for(x=1; x<=100; x++) {
			sum1 += x;
		}
		System.out.println("1부터 " + (x-1) + "까지의 총합은 " + sum + "입니다.");
	}

}
