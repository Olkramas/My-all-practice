package sec01.exam01.pra.sub;

import sec01.exam01.pra.sub.CellPhone;

public class DmbCellPhone extends CellPhone{
	int channel;
	
	DmbCellPhone(String model, String color, int channel) {
		super();
		this.model = model;
		this.color = color;
		this.channel = channel;
	}
	void turnOnDmb() {
		System.out.println("채널 " + channel + "번 방송을 실행합니다.");
	}
	void changeChannelDmb(int channel) {
		this.channel = channel;
		System.out.println("채널 " + channel + "번으로 바꿉니다.");
	}
	void turnOffDmb() {
		System.out.println("Dmb 수신을 멈춥니다.");
	}
}
