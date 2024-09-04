package sec01.exam02;
//40강
public class People {
	//Field
	public String name;
	public String ssn;
	
	
	//Constructor
	public People(String name, String ssn) {
		this.name = name;
		this.ssn = ssn;
	}
}
//2. 부모생성자에게 전달되어 부모 필드에 저장됨.