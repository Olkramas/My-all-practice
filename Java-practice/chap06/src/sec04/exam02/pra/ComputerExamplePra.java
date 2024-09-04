package sec04.exam02.pra;

public class ComputerExamplePra {

	public static void main(String[] args) {
		
		ComputerPra myCom = new ComputerPra();
		
		int[] values1 = {1, 2, 3};
		
		myCom.sum1(values1);
		int result1 = myCom.sum1(values1);
		System.out.println("result1: " + result1);
		
		int result2 = myCom.sum1(new int[] {1, 2, 3, 4, 5});
		System.out.println("result2: " + result2);
		
		int [] values2 = {1, 45, 782, 5};
		int result3 = myCom.sum1(values2);
		System.out.println("result3: " + result3);
		
		int result4 = myCom.sum2(1, 2, 3, 10);
		System.out.println("result4: " + result4);
		
		int result5 = myCom.sum2(5, 5, 6, 7);
		System.out.println("restul5: " + result5);
		

	}

}
