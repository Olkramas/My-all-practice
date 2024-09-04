package sec02.exam09.pra;

public class ArrayCopyExample {

	public static void main(String[] args) {
		String[] oldStrArray = {"java", "array", "copy"};
		String[] newStrArray = new String[5];
		
		System.out.println(oldStrArray[0]);
		System.out.println();
		
		for(int i=0; i<oldStrArray.length; i++) {
			newStrArray[i] = oldStrArray[i];
		}
		for(int i=0; i<newStrArray.length; i++) {
			System.out.println(newStrArray[i]);
		}

	}

}
