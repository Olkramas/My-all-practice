package sec02.exam01;
//66강
import java.awt.Toolkit;

public class SleepExample {

	public static void main(String[] args) {
		Toolkit toolkit = Toolkit.getDefaultToolkit();
		for(int i=0; i<10; i++) {
			toolkit.beep();
			try {
				Thread.sleep(3000);
			} catch(InterruptedException e) {}				//sleep은 InterruptedException를 발생시킬 수 있기 때문에 예외처리를 해야됨.
		}

	}

}
