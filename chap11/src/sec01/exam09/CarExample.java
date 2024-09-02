package sec01.exam09;

public class CarExample {

	public static void main(String[] args) {
		Class clazz = Car.class;
		
		String photo1Path = clazz.getResource("photo1.jpg").getPath();
		System.out.println(photo1Path);
		

	}

}
