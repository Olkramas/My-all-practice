package sec01.exam23;
/*
 62강 자동 박싱, 언박싱
 */
public class AutoBoxingUnBoxingExample {

	public static void main(String[] args) {
		
		Integer obj = 100;								//기본타입을 클래스 타입의 변수에 저장? 원래라면 안되지만, 자동 박싱되어 가능
		System.out.println("value " + obj.intValue());	//intValue()를 통해 int 값으로 변환된 값을 출력
		System.out.println(obj);					
		
		int value = obj;								//기본타입변수에 참조타입 변수가 대입됨. obj안에 있는 값이 자동 언박싱되어 기본타입의 값이 적용됨.
		System.out.println("value " + value);
		
		int result = obj + 100;							//연산식에서 자동 언박싱되는지 확인하기.
		System.out.println(result);
	}

}
