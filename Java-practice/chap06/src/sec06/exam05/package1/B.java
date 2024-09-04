package sec06.exam05.package1;

public class B {
	public B() {
		A a = new A();
		a.field = 10;
		a.method();
	}
	
	public void method() {
		A a = new A();
		a.field = 10;
		a.method();
	}
}
