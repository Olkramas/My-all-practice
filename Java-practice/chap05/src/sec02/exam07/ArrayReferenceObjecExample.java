package sec02.exam07;

public class ArrayReferenceObjecExample {

	public static void main(String[] args) {
		String[] strArray = new String[3];
		strArray[0] = "java";
		strArray[1] = "java";
		strArray[2] = new String("java");
		
		System.out.println(strArray[0] == strArray[1]); //인덱스0과1이 같은 객체를 참조하는지 확인(같은 문자열이면 같은 객체를 참조함)
		System.out.println(strArray[0] == strArray[2]);
		System.out.println(strArray[0].equals(strArray[2])); //인덱스 안이 같은 문자열인지 확인함
		
		
	}

}
