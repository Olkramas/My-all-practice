package sec01.exam03;

public class Computer extends Calculator{
	
//메소드 오버라이징, 재정의
	@Override //--얘가 있으면 잘못 선언했을때 바로 컴파일 오류라는 것을 알려줌
	double areaCircle (double r) {
		System.out.println("Calculator 객체의 areaCircle() 실행");
		return Math.PI * r * r;
	}
	//메소드 오버라이징은 부모와 같은 메소드의 선언부, 매개변수 타입이 다르면 안됨.
	//접근제한자는 더 넓은 범위로 바꾸는 건 가능 default --> public
}