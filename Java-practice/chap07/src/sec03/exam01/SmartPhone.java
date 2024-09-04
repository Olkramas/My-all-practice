package sec03.exam01;
//부모 생성자가 기본생성자가 아니라 매개변수를 갖고있는 생성자가 있다면 상속 클래스안에 생성자에서 매개변수를 받을 수 있는 값을 설정해줘야됨.
public class SmartPhone extends Phone{
	
	//Constructor
	public SmartPhone(String owner) {
		super(owner);
	}
	
	//Method
	public void internetSearch () {
		System.out.println("인터넷 검색을 합니다.");
	}

}
