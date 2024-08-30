package sec02.exam07;

public class WhileSumFrom1To100Example {

	public static void main(String[] args) {
		int i = 1;
		int sum = 0;
		
		while(i<=100) {
			sum = sum + i;
			i++;
		}
		System.out.println("1-100까지의 총 합은:" + sum + "입니다.");
	}

}
