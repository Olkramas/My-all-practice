package sec05.exam02;
//35강 정적멤버 선언, 사용
public class Calculator {
	//Field
	static double pi = 3.14159;
	
	//Method
	static int plus(int x, int y) {
		return x + y;
	}
	
	static int minus(int x, int y) {
		return x - y;
	}
}


/* 35강 11분쯤 내용
 *객체마다 다른 값을 받을 수 있는 경우 - 인스턴스 멤버
 *객체마다 다른 값을 받을 필요가 없는 경우 - 정적멤버
 *ex) pi같은 경우 고정된 값이기때문에 static으로 고정하는게 나음! 
 *인스턴스 필드, 인스턴스 메소드, this.같은 경우 인스턴스
 *그외 상황에 static선언하기
 *
 *정적메소드 안에는 인스턴스 필드및 메소드(+ this.) 사용 불가능. 객체 없이 사용할 수 있는게 정적메소드인데, 인스턴스 필드 있으면 안되겠죵? 
 *
 */
 