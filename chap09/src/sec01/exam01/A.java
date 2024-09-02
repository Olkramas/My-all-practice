package sec01.exam01;
//48강
public class A {
	A() {
		System.out.println("A 객체가 생성됨.");
	}
	
	class B {
		B() {
			System.out.println("B 객체가 생성됨.");
		}
		int field1;
		static int field2;
		void method1() {}
		static void method2() {}
	}//강의가 년식이 좀 돼서 이제는 static클래스가 아니라도 스태틱 필드를 선언할 수 있음.
	
	static class C {
		C() {
			System.out.println("C 객체가 생성됨.");
		}
		
		int field1;
		static int field2;
		void method1() {}
		static void method2() {}
	}
	
	void method() {
		class D {
			D() {
				System.out.println("D 객체가 생성됨.");
			}
			int field1;
			static int field2;
			//로컬 클래스 내에도 정적필드를 가질 수 있음
			void method1() {}
			static void method2() {}
				
			
		}
		D d = new D();
		d.field1 = 3;
		d.method1();
	}
}
