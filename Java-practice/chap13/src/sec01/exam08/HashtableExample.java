package sec01.exam08;
/*
 Hashmap과 사용법은 같지만
 멀티스레드에서 사용하는 방식
 */
import java.util.Hashtable;
import java.util.Map;
import java.util.Scanner;

public class HashtableExample {

	public static void main(String[] args) {
		Map<String, String> map = new Hashtable<>();
		
		map.put("spring", "12");
		map.put("summer", "12");
		map.put("fall", "12");
		map.put("winter", "12");
		map.put("spring1", "12");
		
		Scanner scanner = new Scanner(System.in);
		
		while(true) {
			System.out.println("아이디와 비밀번호를 입력하시오");
			System.out.print("아이디: ");
			String id = scanner.nextLine();
			
			System.out.print("비밀번호: ");
			String password = scanner.nextLine();
			System.out.println();
			if(map.containsKey(id)) {
				if(map.get(id).equals(password)) {
					System.out.println("로그인 되었습니다.");
					break;
				} else {
					System.out.println("비밀번호가 일치하지 않습니다.");
				} 
			
			} else {
				System.out.println("입력하신 아이디가 존재하지 않습니다.");
				System.out.println("다시 입력해주세요.");
			}
		}
	}

}
