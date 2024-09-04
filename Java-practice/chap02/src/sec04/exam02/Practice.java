package sec04.exam02;

import java.util.Scanner;

public class Practice {
	public static void main(String[] args)  {
		
		System.out.println("무엇을 입력하시겠습니까?");
		Scanner user = new Scanner(System.in);
		String inputString = user.nextLine();
		System.out.println("입력한 문자열은 다음과 같습니다: " + inputString);
		user.close();
		
	}
}
