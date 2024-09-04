package sec02.exam05;

public class MainStringArgument1 {

	public static void main(String[] args) {
		
		if(args.length != 2) {
			System.out.println("값의 수가 부족합니다.");
			System.exit(0);//사용자의 요구에 따라 프로그램을 종료시킬 수 있는 코드
		}
		String strNum1 = args[0];
		String strNum2 = args[1];
		
		int num1 = Integer.parseInt(strNum1);
		int num2 = Integer.parseInt(strNum2);
		
		int result = num1 + num2;
		
		System.out.println(result);
	}

}
