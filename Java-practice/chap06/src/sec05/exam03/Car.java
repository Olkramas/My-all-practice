package sec05.exam03;

public class Car {
	int speed;
	
	void run() { // static run이라고 선언하면 컴파일 에러가 뜸. run이라는 메소드 Car이라는 객체가 없어도 실행 가능해야함. 그러나speed가 오기 때문에 안됨. speed를 static 으로 선언하기
		System.out.println(speed + "으로 달립니다.");
	}
	
	public static void main(String[] args) { //메인도 정적메소드임
		// speed = 60; speed는 Car객체 내부에 있어서 바로 호출이 안됨. 객체 선언해야됨. or static int speed로 바꾸기
		Car myCar = new Car();
		myCar.speed = 60;
		myCar.run();
	}
}
