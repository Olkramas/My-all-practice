package sec01.exam06;
//50강
public class Button {
	OnClickListener listener; //인터페이스 타입의 필드 선언.
	
	void setListener(OnClickListener listener) {
		this.listener = listener;
	}
	
	void click () {//버튼을 클릭했을 때 실행하는 메소드
		//이를 실행했을 때 뭐가 실행될지는 모르니 구체적으로 기능을 지금 설정해서는 안됨.
		listener.onClick();
	}
	
	static interface OnClickListener { //정적 중첩인터페이스 선언 버튼이 실행버튼이 갖고있는 인터페이스 만드는 용도
		void onClick();
	}
	
}
