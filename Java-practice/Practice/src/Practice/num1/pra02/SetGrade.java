package Practice.num1.pra02;

import java.util.Scanner;

public class SetGrade {
	Grade grade = new Grade();
	Scanner scanner = new Scanner(System.in);
	
	public void userget() {
		while(true) {
			System.out.println("--------------");
			System.out.println("점수를 입력하시오: ");
			System.out.println("--------------");
			
			try {
				int checkScore = scanner.nextInt();
				System.out.println("입력한 점수는 " + checkScore + "입니다.");
					switch(setRating(checkScore)) {
					case 6 : System.out.println("점수는 " + checkScore + "점 6등급 입니다.");	break;
					case 5 : System.out.println("점수는 " + checkScore + "점 5등급 입니다.");	break;
					case 4 : System.out.println("점수는 " + checkScore + "점 4등급 입니다.");	break;
					case 3 : System.out.println("점수는 " + checkScore + "점 3등급 입니다.");	break;
					case 2 : System.out.println("점수는 " + checkScore + "점 2등급 입니다.");	break;
					case 1 : System.out.println("점수는 " + checkScore + "점 1등급 입니다.");	break;
					case -1 : System.out.println("점수를 잘못 입력하셨습니다.");
					}
			} catch(Exception e) {
				System.out.println("숫자를 입력하지 않았습니다.");
				scanner.nextLine();
			}
		
		}
	}
	
	public static int setRating(int value) {
			if(value < 50) {
				return 6;
			} else if(value < 60) {
				return 5;
			} else if(value < 70) {
				return 4;
			} else if(value < 80) {
				return 3;
			} else if(value < 90) {
				return 2;
			} else if(value <= 100) {
				return 1;
			} else if(value < 0) {
				return -1;
			} else {
				return -1;
			}
	}
	
}