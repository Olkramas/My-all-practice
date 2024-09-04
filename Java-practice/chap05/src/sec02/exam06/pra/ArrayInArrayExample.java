package sec02.exam06.pra;

public class ArrayInArrayExample {

	public static void main(String[] args) {
		int[][] mathScores = new int[2][3];
		
		mathScores[1][2] = 10;
		
		for(int i=0; i<2; i++) {
			for(int k=0; k<3; k++) {
				System.out.println("[" + i + "]" + "[" + k + "]" + "= "
			+ mathScores[i][k]);
			}
		}
		System.out.println();
		
		int[][] englishScores = new int[2][];
		englishScores[0] = new int[2];
		englishScores[1] = new int[3];
		
		for(int i=0; i<2; i++) {
			for(int k=0; k<englishScores[i].length; k++) {
				System.out.println("[" + i + "]" + "[" + k + "]" + "= "
						+ englishScores[i][k]);
			}
		}
	}

}
