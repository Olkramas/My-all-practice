package sec01.exam06;

public interface RemoteControl {
	int MAX_VOLUME = 10;
	int MIN_VOLUME = 0;
	
	//Method
	//public abstract 생략됨, 실행문도 적지 않음{}내용 말하는거
	void turnOn();
	void turnOff();
	void setVolume(int volume);
}
