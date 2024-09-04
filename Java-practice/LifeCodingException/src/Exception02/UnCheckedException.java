package Exception02;

public class UnCheckedException {

	public static void main(String[] args) {
		System.out.println(1);
		int[] scores = {10,20,30};
		 
		try {
			System.out.println(2);
			System.out.println(scores[3]);
			System.out.println(3);
			System.out.println(2/0);					//자바는 수를 0으로 나누는 것을 허용하지 않음
			System.out.println(4);
		/*} catch(Exception e) {
			System.out.println("뭔가 이상합니당ㅇ...");		//아래 예외들은 상속으로 Exception이 부모 클래스임. 그래서 어떤 예외가 발생해도 Exception이 처리하는 것
		} */
		} catch(ArithmeticException e) {
			System.out.println("잘못된 계산입니다." + e.getMessage());
			e.printStackTrace();						//어디에서 오류가 발생했는지 알려줌. 
		} catch(ArrayIndexOutOfBoundsException e) {
			System.out.println("없는 값을 찾고 계시네요");		//11번줄이 오류가 남. 그래서 catch로 넘어옴. 그 후 try를 빠져나옴
		} catch(Exception e) {
			System.out.println("뭔가 이상행..");	  		//Exception으로 처리할 땐 순서 신경쓰기. 앞에 모든 catch로 못 처리했을 때 처리가능.
		}
		System.out.println(5);

	}

}