package sec01.exam04;

public class Outter {
	public void method1(int arg) {
		int rocalVariable = 1;
		
		//arg = 100;
		//rocalVariable = 100;
		
		//로컬 클래스에서 매개변수나 로컬변수를 사용할 때 이들은 final 상수취급이기 때문에 값을 변경할 수 없음. 보이지 않아도 final이 붙어있음
		//final은 붙여도 되고 안붙여도됨.
		class Inner {
			void method() {
				int result = arg + rocalVariable;
				
			}
		}
	}
}
