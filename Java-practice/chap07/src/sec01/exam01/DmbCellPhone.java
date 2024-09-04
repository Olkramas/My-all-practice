package sec01.exam01;

import sec01.exam01.sub.CellPhone;

public class DmbCellPhone extends CellPhone {
	//Field
	int channel;
	
	//Consturctor
	DmbCellPhone(String model, String color, int channel) {
		super();//직접 넣지 않아도 알아서 컴파일러가 생성함.
		
		this.model = model; //CellPhone에서 상속받은 필드
		this.color = color; //CellPhone에서 상속받은 필드
		this.channel = channel;
	}
	//Method
	void turnOnDmb() {
		System.out.println("채널" + channel + "번 DMB방송을 실행합니다.");
	}
	void changeChannelDmb(int channel) {
		this.channel = channel;
		System.out.println("채널" + channel + "번으로 바꿉니다.");
	}
	void turnOffDmb() {
		System.out.println("DMB 방송 수신을 멈춥니다.");
	}
}

