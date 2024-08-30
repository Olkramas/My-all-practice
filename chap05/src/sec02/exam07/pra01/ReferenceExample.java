package sec02.exam07.pra01;

public class ReferenceExample {

	public static void main(String[] args) {
		Reference ref1 = new Reference("java");
		Reference ref2 = new Reference("java");
		
		System.out.println(ref1 == ref2);
		System.out.println(ref1.equals(ref2));

	}

}
