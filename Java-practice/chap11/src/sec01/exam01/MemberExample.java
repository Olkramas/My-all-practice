package sec01.exam01;


public class MemberExample {

	public static void main(String[] args) {
		
		Member obj1 = new Member("blue");
		Member obj2 = new Member("blue");
		Member obj3 = new Member("red");
		
		
		
		
		//.equals는 boolean타입으로 결과를 알려줌.
		if(obj1.equals(obj2)) {									//.equals()는 동일한 Member를 참조하는 객체만 비교가능
			System.out.println("obj1과 obj2가 동등합니다.");
			
		} else {
			System.out.println("obj1과 obj2가 동등하지 않습니다.");
			
		}
		
		
		if(obj1.equals(obj3)) {									
			System.out.println("obj1과 obj3가 동등합니다.");
		} else {
			System.out.println("obj1과 obj3가 동등하지 않습니다.");
			
		}
		
		
		
	}

}