package sec04.exam02;

import java.util.Scanner;

public class Practice01 {

	public static void main(String[] args) {
		
		Scanner pw1 = new Scanner(System.in);
		String userpw = pw1.nextLine();
		
		System.out.println( "입력한 비밀번호는 "+ userpw + "이 맞습니까?");
		System.out.println("맞다면  \"예\" 아니라면 \"아니오\"를 입력해주세요.");
		
		Scanner pw2 = new Scanner(System.in);
		String userpwCheck	= pw2.nextLine();
		
		if(userpwCheck.equals("예")) {
			System.out.println("확인 감사합니다.");
		} else {
			System.out.println("다시 실행해주세요.");
			System.out.println(pw2);
		}

	}

}
