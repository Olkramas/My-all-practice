package sec01.exam26;
/*
 63강 Math클래스
 */
public class MathExample {

	public static void main(String[] args) {
		
		int v1 = Math.abs(-5);							//()안 숫자에 대한 절댓값을 리턴함.
		double v2 = Math.abs(-3.14);
		System.out.println("v1= " + v1);
		System.out.println("v2= " + v2);
		
		double v3 = Math.ceil(5.3);						//()안 숫자의 올림값  실수화 해서 리턴
		double v4 = Math.ceil(-5.3);					
		System.out.println("v3= " + v3);
		System.out.println("v4= " + v4);
		
		double v5 = Math.floor(5.3);					//()안 숫자의 내림값 실수화 해서 리턴
		double v6 = Math.floor(-5.3);
		System.out.println("v5= " + v5);
		System.out.println("v6= " + v6);
		
		int v7 = Math.max(5, 9);						//()안 두 숫자의 최댓값
		double v8 = Math.max(5.3, 2.5);						
		System.out.println("v7= " + v7);
		System.out.println("v8= " + v8);
		
		int v9 = Math.min(5, 9);						//()안 두 숫자의 최솟값
		double v10 = Math.min(5.3, 2.5);						
		System.out.println("v9= " + v9);
		System.out.println("v10= " + v10);
		
		double v11 = Math.random();						//0.0을 포함하고 1.0미만의 값을 랜덤으로 리턴
		System.out.println("v11= " + v11);
		
		double v12 = Math.rint(5.3);					//가장 가까운 정수의 실숫값을 리턴
		double v13 = Math.rint(5.7);
		System.out.println("v12=" + v12);
		System.out.println("v13=" + v13);
		
		long v14 = Math.round(5.3);						//실수에서 반올림해서 그 정수로 만들어 그 정수롤 long타입으로 리턴함. 
		long v15 = Math.round(5.7);
		System.out.println("v14=" + v14);
		System.out.println("v15=" + v15);
		
		double value = 12.3456;							//round를 활용하여 소수점 몇번째 자리의 값까지 보이게 할건지 설정가능.
		double temp1 = value * 100;
		double temp2 = Math.round(temp1);
		double v16 = temp2 / 100.0;
		System.out.println("v16=" + v16);
	}

}
