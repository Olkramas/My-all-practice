package sec02.exam02;

public class Anonymous {
	RemoteControl field = new RemoteControl() { //구현객체를 인터페이스를 통해서 생성하는 방법 == 익명 구현 객체 생성
		//익명 구현 객체를 만들면 원래 RemoteControl에 있었던 메소드들을 모두 재정의 해야됨.

		@Override
		public void turnOn() {
			System.out.println("TV를 켭니다.");
			
		}

		@Override
		public void turnOff() {
			System.out.println("Tv를 끕니다.");
			
		}			
		
	}; //필드변수 타입 선언할 때 인터페이스 선언가능
	
	void method1() { //로컬 변수 타입 선언할 때 인터페이스ok
		RemoteControl localVal = new RemoteControl() { // 로컬 변수로 인터페이스 타입이 선언됐을 경우 익명 구현객체 생성가능.

			@Override
			public void turnOn() {
				System.out.println("Audio를 켭니다");
				
			}

			@Override
			public void turnOff() {
				System.out.println("Audio를 끕니다.");
				
			}
			
		};
		localVal.turnOn();
		localVal.turnOff();
	}
	
	void method2(RemoteControl rc) { // 메소드 매개변수 타입 선언때 인터페이스ok
		rc.turnOn();
		rc.turnOff();
	}
}
