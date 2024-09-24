package chap01;

import java.util.Scanner;

public class ScannerExample {

	public static void main(String[] args) {
		Scanner scanner = new Scanner(System.in);
		String inputData;
		
		while(true) {
			System.out.print("문자열을 입력하세요: ");
			inputData = scanner.nextLine();
			System.out.println("입력된 문자열: " + inputData);
			
			if(inputData.equals("q")) {
				System.out.println("작동을 정지합니다.");
				break;
			}
		}
	}

}
