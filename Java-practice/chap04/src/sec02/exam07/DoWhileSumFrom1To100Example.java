package sec02.exam07;

public class DoWhileSumFrom1To100Example {

	public static void main(String[] args) {
		int i = 1;
		int sum = 0;
		
		do {
			sum += i;
			i++;
		}while(i<=100);
		
		System.out.println("1-" + (i-1) + "의 총합은" + sum + "입니다.");

	}	

}
		//while은 조건식을 보고 true라면 실행문을 실행함. 그러나 Do while은 실행문을 일단 실행, 그리고 조건식을 확인함.