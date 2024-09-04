package sec01.exam01;

public class Main {

	public static void main(String[] args) {
		A a = new A();
		
		A.B b = a.new B(); //중첩클래스 인스턴스 클래스 객체 생성
		b.field1 = 3;
		b.method1();
		
		
		//C 클래스는 static이 붙어있기 때문에 c라는 객체를 만들지 않아도 호출가능
		
		A.C c = new A.C(); //중첩클래스 정적클래스 객체생성
		c.field1 = 3;
		c.method1();
		A.C.field2 = 3; //클래스 이름만 가지고 호출했음
		A.C.method2();
		
		
		a.method();
	}

}
