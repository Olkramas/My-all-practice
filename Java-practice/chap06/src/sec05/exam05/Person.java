package sec05.exam05;

public class Person {
	//Field
	final String nation = "korean";
	final String ssn; // 객체마다 달라지는 final값을 필드에서 바로 줄 수 없음. 아래 생성자 Person 참고
	String name;
	
	//Constructor
	Person(String ssn, String name) {
		this.ssn = ssn;
		this.name = name;
	}
	
	
	
}
