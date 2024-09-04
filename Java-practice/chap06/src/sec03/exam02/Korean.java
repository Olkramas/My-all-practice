package sec03.exam02;

public class Korean {
	//Field
	String nation = "대한민국";
	String name;
	String ssn;
	
	//Constructor 매개변수 선언
	//매개변수와 필드의 이름이 같으면 매개변수를 매개변수로 저장하는 효과가 나옴. this.name = name; 필드임을 기술하기 위해서 this.붙이기!
	Korean(String name, String s) {
		this.name = name;
		ssn = s;
	}
}
