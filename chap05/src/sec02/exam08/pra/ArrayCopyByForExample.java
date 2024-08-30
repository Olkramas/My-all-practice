package sec02.exam08.pra;

public class ArrayCopyByForExample {

	public static void main(String[] args) {
		
		int[] oldIntArray = { 3, 5, 7};
		int[] newIntArray = new int[5];
		
		for(int i=0; i<oldIntArray.length; i++) {
			newIntArray[i] = oldIntArray[i];
		}
		for(int i=0; i<newIntArray.length; i++) {
			System.out.println(newIntArray[i] + ",");
		}
	}

}
