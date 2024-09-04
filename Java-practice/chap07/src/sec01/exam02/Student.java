package sec01.exam02;

public class Student extends People{
	public int studentNO;
	
	public Student(String name, String ssn, int studentNo) {
		super(name, ssn);  // 이해안되면 40강 30분부터 다시보기
		//컴파일러는 기본적으로 생성자를 super를 생성하는데(오른쪽 중괄호 안에 자동생성) public People() {} 이 안에 없다면 컴파일 오류가 생김. 올바르게 생성해야함.
		this.studentNO = studentNo;
	}
}
//1. 홍길동은 첫번째로 여기로 들어와서 super내에 있는 부모 생성자에게 전달됨.