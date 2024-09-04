package sec04.exam02;
//32강 배열변수 메소드 선언, 호출
public class Computer {
	//Field
	//Constructor
	//Method
	int sum1(int[] values) {
		int sum = 0;
		for(int i=0; i<values.length; i++) {
			sum += values[i];
		}
		return sum;
		 
	}
	
	int sum2(int ...values) {//자바는 이것도 배열과 같은 방식으로 인식
		int sum = 0;
		for(int i=0; i<values.length; i++) {
			sum += values[i];
		}
		return sum;
		 
	}
}
