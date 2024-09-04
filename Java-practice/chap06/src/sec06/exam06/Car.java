package sec06.exam06;

public class Car {
	//Field
	private int speed;
	private boolean stop;
	
	//Method
	public int getSpeed() {
		return speed;
	}
	public void setSpeed(int speed) {
		if(speed<0) {
			this.speed = 0;
			return;
		} else {
			this.speed += speed;
		}
	}
	
	public boolean isStop() { //boolean타입의 getter는 is가 적절함
		return stop;
	}
	public void setStop(boolean stop) {
		//if(stop) {
			speed = 0;
		//} 
			this.stop = stop;
	}
	
	
	
}
