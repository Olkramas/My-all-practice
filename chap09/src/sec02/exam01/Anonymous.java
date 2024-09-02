package sec02.exam01;

public class Anonymous {
	Person field = new Person() { // 익명 자식 객체 생성
		void work() { //익명자식객체가 가지는 메소드. 자식만이 가지고 있음
			System.out.println("출근합니다.");
		}
		
		@Override
		void wake() {
			System.out.println("6시에 일어납니다");
			work(); //익명자식객체의 메소드는 사용가능.
		};
	};
	
	void method1() {
		Person localVar = new Person() {//익명자식객체 생성, 
			void walk() {
				System.out.println("산책합니다.");
			}
			
			@Override
			void wake() {
				System.out.println("7시에 일어납니다.");
				walk();
			}
		};
		localVar.wake();
	}
	void method2(Person person) {
		person.wake();
	}
}
