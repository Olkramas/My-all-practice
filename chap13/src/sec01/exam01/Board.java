package sec01.exam01;
/*\
자바 기초강의 146강
 */
public class Board {
	
	private String subject;
	private String content;
	private String writer;
	
	public Board(String subject, String content, String writer) {
		this.subject = subject;
		this.content = content;
		this.writer = writer;
	}
	
	public String getSubject() {return subject;}
	public void setSubject(String subject) {this.subject = subject;}
	public String getContent() {return content;}
	public void setContent(String content) {this.content = content;}
	public String getWriter() {return writer;}
	public void getWriter(String writer) {this.writer = writer;}
	
}
//멀티 스레드에서 공유객체를 사용할 때 ArrayList보다는 Vector가 더 나은 방식임.