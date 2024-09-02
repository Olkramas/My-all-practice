package sec01.exam15;
/*
 61강 
 .indexOf("");는  ""안의 문자열의 시작 인덱스 번호를 저장함. 만약 해당이 없다면 -1을 리턴. 
 .contains("");는 ""안의 문자열이 전체 문자열에 존재하는지 확인함. 있다면 true 아니면 false 
 */

public class StringIndexOfExample {

	public static void main(String[] args) {
		
		String subject = "자바 프로그래밍";
		
		int location = subject.indexOf("프로그래밍");			//프로그래밍이 시작하는 인덱스의 번호가 location에 저장됨
		System.out.println(location);
		
		if(subject.indexOf("자바") != -1) {							//자바가 있다면 -1이 아닌 다른 수를 리턴함.
			System.out.println("자바와 관련된 책이군요.");
		} else {
			System.out.println("자바와 관련없는 책이군요.");
		}
		
		if(subject.contains("자바")) {							
			System.out.println("자바와 관련된 책이군요.");
		} else {
			System.out.println("자바와 관련없는 책이군요.");
		}

	}

}
