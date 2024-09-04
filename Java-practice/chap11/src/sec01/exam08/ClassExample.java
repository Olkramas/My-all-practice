package sec01.exam08;
//59강
//리플렉션 -- 타입이름, 파일경로 정보, 필드 정보, 생성자 정보, 메소드 정보를 얻음. 
//Car 클래스의 Class객체 생성, 아래 세 clazz변수의 참조 위치는 모두 같다.
public class ClassExample {

	public static void main(String[] args) throws ClassNotFoundException {
		
		Class clazz1 = Car.class;							//Car클래스의 Class객체가 생성되어 clazz에 대입됨.
		
		Class clazz2 = Class.forName("sec01.exam08.Car");	//Class.forName메소드는 ClassNotFoundException을 발생시킬 수 있기 때문에 메인 옆에 예외처리를 해준 모습
		
		Car car = new Car();
		Class clazz3 = car.getClass();						//getClass메소드는 Car클래스의 Class객체의 번지를 리턴함.
		System.out.println(clazz1 == clazz2);				//같은 번지 참조하는지 확인하기
		System.out.println(clazz1 == clazz3);
		
		System.out.println(clazz1.getName()); 				//getName을 통해 Car클래스의 전체이름을 얻을 수 있다.
		System.out.println(clazz1.getSimpleName());			//package를 제외한 클래스 이름만 출력함.
		System.out.println(clazz1.getPackage().getName());	//getPackage는 Package 클래스가 리턴하는 값 패키지가 가지고 있는 패키지 이름이 출력됨. 
	}

}
