package sec01.exam04;

public class SuperSonicAirPlane extends AirPlane{
	public static final int NORMAL = 1;
	public static final int SUPERSONIC = 2;
	
	public int flyMode = NORMAL;
	
	
	//컨트롤 쉬프트 조금만 입력하면 바로 다 나옴 오버라이드까지 편하게 가능
	@Override
	public void fly() {
		if(flyMode == SUPERSONIC) {
			System.out.println("초음속 비행합니다.");
		} else {
			super.fly();//부모메소드 호출
		}
	}
	
}
