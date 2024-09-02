package sec02.exam01;
//선입후출
import java.util.Stack;

public class StackExample {

	public static void main(String[] args) {
		
		Stack<Coin> coinBox = new Stack<Coin>(); 
		
		coinBox.push(new Coin(100));				//스택에 정보를 넣을 땐 push
		coinBox.push(new Coin(50));
		coinBox.push(new Coin(500));
		coinBox.push(new Coin(10));
		
		while(!coinBox.isEmpty()) {					//coinBox가 비어있지 않을 때 참.
			Coin coin = coinBox.pop();				//스택 제일 위에 있는(제일 최근에 들어간) 요소를 가져오고 제거함. //peek는 가져오고 스택에서 제거하지 않음.
			System.out.println("꺼낸 동전 : " + coin.getValue() + "원");
		}
		
		int sum = coinBox.size();
		System.out.println("남은 동전의 수: " + sum + "개");
	}

}
