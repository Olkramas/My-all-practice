package sec03.exam02;

public class Dog extends Animal {
	//Constructor
	public Dog() {
		this.kind = "포유류";
	}
	//Method
	@Override
	public void sound() {
		System.out.println("멍뭉");
		
	}
}
