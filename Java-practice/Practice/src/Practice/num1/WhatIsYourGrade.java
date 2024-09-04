package Practice.num1;

import java.util.Scanner;

public class WhatIsYourGrade {
	
	public static void main(String[] args) {
		Scanner scanner = new Scanner(System.in);
		
		System.out.println("점수를 입력하세요.");
		int score = scanner.nextInt();
		
		char grade = (score >= 90) ? 'A' : ((score >= 80)? 'B' : 'c');
		System.out.println(score + "점은 " + grade + "등급입니다.");
		
	}

}