package sec01.exam22;
//62강
/*
Wrapper클래스로 박싱을 통해 기본타입의 객체를 형성할 수 있음.
 */
public class BoxingUnBoxingExample {

	public static void main(String[] args) {
		
		Integer obj1 = new Integer(100);			//100이라는 기본타입 변수를 박싱 obj1이라는 객체 형성
		Integer obj2 = new Integer("200");			//문자열안이 숫자로만 이루어져 있다면 가능.
		Integer obj3 = Integer.valueOf("300");		//생성자 이용없이 각 포장클래스 마다 가진 정적 메소드 valueOf()를 활용하여 박싱한 모습
		
		
		
		int value1 = obj1.intValue();				//obj1 값을 얻어 value1에 저장한다는 의미
		int value2 = obj2.intValue();
		int value3 = obj3.intValue();
		
		System.out.println(value1);
		System.out.println(value2);
		System.out.println(value3);

	}

}
