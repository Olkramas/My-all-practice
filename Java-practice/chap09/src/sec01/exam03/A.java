package sec01.exam03;
//49강
public class A {
	int field1;
	void method1() {}
	
	static int field2;
	static void method2() {}
	
	class B{
		void method() {
			field1 = 10;
			method1();
			
			field2 = 10;
			method2();
			
		}
	static class C{
		void method() {
			/*
			field1 = 10;
			method1();		== static으로 선언된C 클래스라 A객체가 있어야만 사용가능한 인스턴스 코드라 사용불가능
			*/
			
			field2 = 10;
			method2();
			
		}
	}
	}
}
