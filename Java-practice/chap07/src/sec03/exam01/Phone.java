package sec03.exam01;
//추상클래스는 직접적으로 객체생성 불가능
public abstract class Phone {
	//Field
	public String owner;
	
	//Constructor
	public Phone(String owner) {
		this.owner = owner;
	}
	
	//Method
	public void turnOn() {
		System.out.println("폰 전원을 켭니다.");
	}
	
	public void turnOff() {
		System.out.println("폰 전원을 끕니다.");
	}
}
