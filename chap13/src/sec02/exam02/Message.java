package sec02.exam02;
//71강
/*
Queue 선입선출을 구현한 인터페이스, 구현클래스로 LinkedList가 있음
 */
public class Message {
	public String command;
	public String to;
	
	public Message(String command, String to) {
		this.command = command;
		this.to = to;
	}
}
