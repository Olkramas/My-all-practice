package sec02.exam01;

public class ForFloatCounterExample {

	public static void main(String[] args) {
		for(float i=0.1f; i<=1; i+=0.1f) {
			System.out.println(i);
		}

	}
														/*플롯의 경우 부동소수점 방식으로 저장하기 때문에 정확하게 저장 불가능하다
														 * 그래서 for같은 반복작업에서 변수를 설정할 때 플롯은 적절하지 않음. 정수 변수 사용하기*/
}
