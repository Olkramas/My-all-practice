package sec02.exam02;

public class ChildExample {

	public static void main(String[] args) {
		Child child = new Child();
		child.method3();
		
		Parent parent = child; //자식객체를 자동타입 변환
		
		parent.method1();
		parent.method2(); //자식쪽에 재정의된 메소드가 출력됨. 매우 중요한 성질
		child.method2();
		child.method3();

	}

}
