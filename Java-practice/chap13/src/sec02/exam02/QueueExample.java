package sec02.exam02;
//선입선출
import java.util.LinkedList;
import java.util.Queue;

public class QueueExample {

	public static void main(String[] args) {
		Queue<Message> messageQueue = new LinkedList<Message>();
		
		messageQueue.offer(new Message("sendMail", "홍길동"));
		messageQueue.offer(new Message("sendSMS", "최태백"));
		messageQueue.offer(new Message("sendKakaotalk", "이소영"));
		
		while(!messageQueue.isEmpty()) {								//messageQueue가 비어있지 않다면 true
			Message message = messageQueue.poll();						//poll(); 하나를 가져오고 객체를 큐에서 제거, peek()는 가져오고 제거 안함.
			switch(message.command) {
			case "sendMail" :
				System.out.println(message.to + "님에게 메일을 보냅니다.");
				break;
			case "sendSMS" :
				System.out.println(message.to + "님에게 SMS을 보냅니다.");
				break;
			case "sendKakaotalk" :
				System.out.println(message.to + "님에게 Kakaotalk을 보냅니다.");
				break;
			}
		}
		int restOfMessage = messageQueue.size();
		System.out.println("남은 메시지의 개수: " + restOfMessage);

	}

}
