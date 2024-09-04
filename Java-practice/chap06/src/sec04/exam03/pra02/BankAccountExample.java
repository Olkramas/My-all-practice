package sec04.exam03.pra02;

public class BankAccountExample {

	public static void main(String[] args) {
		
		BankAccount myAcc = new BankAccount();
		
		System.out.println("잔액: " + myAcc.checkBalance() + "원 입니다.");
		
		myAcc.deposit(1000);
		System.out.println("잔액: " + myAcc.checkBalance() + "원 입니다.");
		
		myAcc.withdraw(10000);
		System.out.println("잔액: " + myAcc.checkBalance() + "원 입니다.");

	}

}
/*무슨 기능을 넣을까 
 *입금기능, 출금기능, 잔액확인 
 */
 