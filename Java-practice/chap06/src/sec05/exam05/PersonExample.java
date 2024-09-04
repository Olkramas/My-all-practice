package sec05.exam05;

public class PersonExample {

	public static void main(String[] args) {
		
		Person p1 = new Person("123456-1234567", "최태백");
		System.out.println(p1.nation);
		System.out.println(p1.ssn);
		System.out.println(p1.name);
		
		
		//p1.nation = "USA";
		//p1.ssn = "654321-6542317";
		p1.name = "조우성";

	}

}
