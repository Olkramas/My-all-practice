package sec01.exam05;

public class Outter {
	String field = "Outter - field";
	void method() {
		System.out.println("Outter - method");
	}
	
	class Nested {
		String field = "Nested - field";
		void method() {
			System.out.println("Nested - method");
		}
		
		void print() {
			System.out.println(this.field); // Nested 클래스의 field를 참조.
			this.method(); // Nested 클래스의 method를 참조
			
			System.out.println(Outter.this.field); // Outter클래스의 객체를 참조
			Outter.this.method();
		}
	}
}
