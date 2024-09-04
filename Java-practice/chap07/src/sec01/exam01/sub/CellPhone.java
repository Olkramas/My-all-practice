package sec01.exam01.sub;

public class CellPhone {
	//Field
	public String model;
	public String color;
	
	//Constructor
	public CellPhone() { //없어도 자동으로 컴파일러가 생성함.
		System.out.println("CellPhone 호출됨.");
	}
	
	//Method
	public void powerOn() {System.out.println("전원을 켭니다");}
	public void powerOff() {System.out.println("전원을 끕니다.");}
	public void bell() {System.out.println("벨이 울립니다.");}
	public void sendVoice(String message) { System.out.println("자기: " + message);}
	public void receiveVoice(String message) {System.out.println("상대방: " + message);}
	public void hangUp() {System.out.println("전화를 끊습니다.");}
}
//다른 패키지에 있기 때문에public을 붙여주기