package sec01.exam02;
//49강
public class A {
	
	class B{}
	static class C{}
	
	//인스턴스 필드에서 B, C의 사용
	B field1 = new B();
	C field2 = new C();
	
	//인스턴스 매소드에서 B, C의 사용
	void method1() {
		B var1 = new B();
		C var2 = new C();
	}
	
	//정적필드 선언
	//static B field3 = new B(); -->B는 인스턴스 멤버이기 때문에 A 객체가 있어야 정적필드 선언가능
	static C field4 = new C(); //C는 정적멤버 클래스. A객체가 없어도 선언가능
	
	
	static void method2() {
		//B var1 = new B(); --> A객체가 있어야 가능.
		C var2 = new C(); //A객체가 없어도 메소드 생성가능한 C
	}
}

