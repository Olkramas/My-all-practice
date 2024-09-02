package sec01.exam04;

public class RemoteControlExample {

	public static void main(String[] args) {
		
		RemoteControl rc; // 인터페이스는 변수의 타입으로 선언
		rc = new Audio();	//rc에 무엇을 대입할건지
		//메소드 호출법은 같지만, new다음 어떤 객체가 대입되느냐에 따라 실행결과는 다름.
		rc.turnOn();
		rc.setVolume(5);
		rc.turnOff();
	}

}
