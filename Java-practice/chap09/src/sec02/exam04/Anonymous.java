package sec02.exam04;
//52강
public class Anonymous {
	private int field;
	//필드는 값을 바꿔도 문제없음.
	public void method(int arg1, int arg2) {
		int var1 = 0;
		int var2 = 0;
		//위 네가지의 변수는 final특성을 가지기 때문에 값을 변경할 수 없음.
		Calculatable clac = new Calculatable() {

			@Override
			public int sum() {
				int result = field + arg1 + arg2 + var1 + var2; //매개변수와 로컬변수를 익명객체 내부에서 사용하여 final특성의 값을 가지게 됨.
				return result;
			}
			
		};
		
		System.out.println(clac.sum());
	}
}
