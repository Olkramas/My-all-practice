package sec05.exam04;
//36강 싱글톤
public class Singleton {
	//Field
	private static Singleton singleton = new Singleton(); //자기자신을 객체로 생성해서 하늘색 싱글턴에 저장하는 것/ 클래스 안에서만 new를 이용해 객체 생성가능 외부에서는 불가능
	//private static 클래스이름 singleton = new 클래스();
	
	//Consturctor
	private Singleton() {}
	//private
	
	//Method
	static Singleton getInstance() { // 외부에서 부를 수 있는 getInstance를 만들어주기
	//static
		return singleton; //필드에서 만들어놓은 곳에 리턴
	}
}
