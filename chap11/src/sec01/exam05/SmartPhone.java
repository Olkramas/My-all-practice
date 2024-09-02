package sec01.exam05;
/*
 58강
 원래 toString은 클래스 이름과 @ 해시코드값을 리턴함.
 그러나 메소드 재정의를 통해서 의미있는 문자열을 출력하는 방법.
 */
public class SmartPhone {
	private String company;
	private String os;
	
	public SmartPhone(String company, String os) {
		this.company = company;
		this.os = os;
	}
	
	@Override
	public String toString() {							//원래 있는 toString을 재정의
		return company + ", " + os;
	}
	

}
