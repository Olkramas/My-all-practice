package sec02.exam08;

public class CompareOperatorExample2 {

	public static void main(String[] args) {
		int v2 = 1;
		double v3 = 1.0;
		System.out.println(v2 == v3);
		
		double v4 = 0.1;
		float v5 = 0.1f;
		/*변수 타입 선언을 이런식으로 안하는게 나음
		 * double이면 하나로, float이면 그거 하나로만 선언하기*/
		System.out.println((double)v5);
		System.out.println(v4 == v5); //왜 이렇게 나올까? 부동소수점 방식 때문에 그럼. 0.1을 완전히 보관할 수 없다고 함
		System.out.println((float)v4 == v5);
		System.out.println((int)(v4*10) == (int)(v5*10));
		
	}

}
//17강