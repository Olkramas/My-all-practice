package Exception04;

import java.io.FileWriter;
import java.io.IOException;

public class Exception05 {

	public static void main(String[] args) throws IOException {
		FileWriter f = new FileWriter("./data.txt");

	}

}
/*
try-catch 또는 throws로 해결하기!
예외를 대비하여 코드를 작성하면 믿음직한 어플리케이션을 만들수 있을것임.
 */
