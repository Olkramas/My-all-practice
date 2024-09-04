package sec01.exam25;
/*
 62강 포장 값 비교 ==, != 가급적 사용하지 말 것. 
 equals사용하기. Integer클래스 내의 equals는 재정의 되어, 같은 타입인지 값은 같은지 비교하게 됨. 그래서 == 과는 다르다. 
 */
public class ValueCompareExample {

	public static void main(String[] args) {
		Integer obj1 = 300;
		Integer obj2 = 300;
		
		System.out.println(obj1 == obj2);    		//객체의 번지가 다름.
		System.out.println("equals결과" + obj1.equals(obj2));    		
		
		
		Integer obj3 = 10;
		Integer obj4 = 10;
		System.out.println(obj3 == obj4);			//객체의 번지가 다르다고 생각했으나 아님.
		System.out.println("equals결과" + obj3.equals(obj4));	//java에서 int값의 경우 언박싱 전의 값이 -128~127사이의 값이면 전에 만들어둔 객체를 가져와서 사용.(같은 위치 참조)
	}

}
