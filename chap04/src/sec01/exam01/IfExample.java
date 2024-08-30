package sec01.exam01;

public class IfExample {

	public static void main(String[] args) {
		int score = 93;
		
		if(score >= 90) {
			System.out.println("점수가 90보다 큽니다.");
			System.out.println("등금은 A 입니다.");
		}
		
		if(score <= 90) 
			System.out.println("점수가 90보다 작습니다.");  //중괄호가 없으면 if문의 범위는 여기까지. 다음줄은 if문의 소속이 아님.
			System.out.println("등급은 B 입니다.");
			
		

	}

}
