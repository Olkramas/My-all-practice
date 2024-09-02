package sec02.exam03;

public class Button {
	static interface OnClickListener {
		void onClick();
	}
	
	OnClickListener listener; //private으로 접근제한자 설정하는 경우가 많음.
	
	void setOnClickListener(OnClickListener listener) { //public으로 접근제한자 설정하는 경우가 많음.
		this.listener = listener;
	}
	
	void touch() { //어떤 listener가 들어오는지에 따라 다른 결과가 나옴.
		listener.onClick();
	}
}
