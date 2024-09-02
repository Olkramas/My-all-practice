package sec01.exam27;
//63강 Math.random()
public class MathRandomExample {

	public static void main(String[] args) {
		
		System.out.println(Math.random());
		
		
		int num1 = (int) (Math.random()*10) + 1;
		System.out.println("num1="+ num1);
		
		int num2 = (int) (Math.random()*6) + 1;
		System.out.println("num2="+ num2);
	}

}
