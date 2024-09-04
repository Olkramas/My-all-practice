package sec02.exam09;

public class LogicalOperatorExample {

	public static void main(String[] args) {
		int charCode = 'A';
		
		if( (charCode>=65) & (charCode<=90) ) {   //if 안의 내용이 true라면 조건문 실행
			System.out.println("대문자이군요");
		}
		//&과 &&의 차이 = &은 charcode>=65가 false일지라도 뒤에 조건을 훑어보지만, &&는 첫번째부터 아니면 그냥 바로 끝 뒤에 조건을 실행하지도 않아서 훨씬 빠르다는 장점
		if( (charCode>=97) && (charCode<=122) ) {
			System.out.println("소문자이군요");
		}
		
		if( !(charCode<48) && (charCode>57) ) {
			System.out.println("0~9 숫자 이군요");
		}
		
		int value = 6;
		if( (value%2==0) | (value%3==0) ) {
			System.out.println("2또는 3의 배수이군요");
		}
		// & &&차이랑 똑같은 차이임.
		if( (value%2==0) || (value%3==0) ) {
			System.out.println("2또는 3의 배수이군요");
		}

	}

}
//17강