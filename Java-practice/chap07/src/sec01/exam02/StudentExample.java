package sec01.exam02;

public class StudentExample {

	public static void main(String[] args) {
		
		Student student = new Student("최태백", "123456-1234567", 1);
		//입력된 값은 Student로 이동
		
		System.out.println("name:" + student.name);
		System.out.println("ssn:" + student.ssn);
		System.out.println("studentNo:" + student.studentNO);
	}

}
