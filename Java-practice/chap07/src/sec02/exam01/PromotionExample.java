package sec02.exam01;

public class PromotionExample {

	public static void main(String[] args) {
		
		B b = new B();
		C c = new C();
		D d = new D();
		E e = new E();
		
		A a1 = b;
		A a2 = c;
		A a3 = d;
		A a4 = e;
		
		B b1 = d;
		C c1 = e;
		
		// B b2 = e; E객체는 B타입과 관련이 없음. 컴파일 오류
		// C c2 = d;
		//상속관계로 있을때만 자동 타입변환이 가능함.
	}

}
