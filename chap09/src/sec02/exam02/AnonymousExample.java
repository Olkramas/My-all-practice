package sec02.exam02;

public class AnonymousExample {

	public static void main(String[] args) {
		
		Anonymous anony = new Anonymous();
		anony.field.turnOn();
		anony.field.turnOff();
		
		anony.method1();
		
		anony.method2(new RemoteControl() {//매개값으로 인터페이스 구현객체를 대입해야됨.

			@Override
			public void turnOn() {
				System.out.println("SmartTV를 켭니다.");
				
			}

			@Override
			public void turnOff() {
				System.out.println("SmartTV를 끕니다.");
				
			}}); 

	}

}
