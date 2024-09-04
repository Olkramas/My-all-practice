package sec04.exam02.pra01;

public class ComputerExample {

	public static void main(String[] args) {
		
		Computer myCom = new Computer();
		
		int[] value = {1, 2, 3};
		
		System.out.println(myCom.sum1(value));
		System.out.println(myCom.sum1(new int[] {1, 1, 1}));
		System.out.println(myCom.sum2(1, 2, 3, 4));
		
		int result1 = myCom.sum1(new int[] {5, 5, 5});
		System.out.println(result1);

	}

}
