package sec03.exam02;

public class Cat extends Animal {
	//Constructor
	public Cat() {
		this.kind = "포유류";
	}
	//Method
	@Override
	public void sound() {
		System.out.println("먀아");
		
	}
}
