package sec05.exam04.pra01;

public class Singleton {
	private static Singleton singleton = new Singleton();
	
	private Singleton() {};
	
	static Singleton getInstance() {
		return singleton;
	}
	
	void run() {
		System.out.println("안녕");
	}
}
