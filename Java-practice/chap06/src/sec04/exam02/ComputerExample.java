package sec04.exam02;

public class ComputerExample {

	public static void main(String[] args) {
		
		Computer myCom = new Computer();
		
		int[] values1 = {1, 2, 3};
		
		myCom.sum1(values1);
		int result1 = myCom.sum1(values1);
		System.out.println("result1의 값은 " + result1);
		
		int result2 = myCom.sum1(new int[] {1, 2, 3, 4, 5});
		System.out.println("result2의 값은 " + result2);
		
		int result3 = myCom.sum2(1, 2, 3);
		System.out.println("result3의 값은 " + result3);
		
		int result4 = myCom.sum2(1, 2, 3, 4, 5);
		System.out.println("result3의 값은 " + result4);
	}

}
