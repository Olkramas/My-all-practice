package sec03.exam02;

public abstract class Animal {
	//Field
	public String kind;
	
	
	//Method
	public void breathe() {
		System.out.println("숨을 쉽니다.");
	}
	//모든 동물이 똑같은 소리를 내지 않기 때문에 추상메소드 작성
	public abstract void sound();
}
