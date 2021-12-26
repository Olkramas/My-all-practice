print("철수: 안녕 영희야 뭐해?")
print("영희: 안녕 철수야 그냥 있어.")

#내가 열번 이것들을 반복하고 싶다. 그때 for, while
for i in range(3):
    print(i)
    print("철수: 안녕 영희야 뭐해?")
    print("영희: 안녕 철수야 그냥 있어.")
#모든 숫자는 0부터 시작함.

#while이 for과 다른 이유는 조건을 달 수 있음.
i = 0
while i < 3:
    print(i) # i=0
    print("철수: 안녕 영희야 뭐해?")
    print("영희: 안녕 철수야 그냥 있어.")
    i = i + 1 
#i에 연산을 하고 13번줄로 다시 올라감. 3보다 작기 때문에 또 돌아감.

#for, while 둘다 서로 구현할 수 있지만, 상황에 따라서 어떤게 더 편할 수 있음.
#while은 무한루프에서 사용하기 좋음
i=0
while True:
    print(i)
    print("true")
    i = i + 1
#원래는 조건이 있어서 끝날것을 알지만, ture는 값이 거짓으로 안바뀌니까 계속 돌아감.
#여기서 break, continue가 있음.      
    if i > 2:
        break

#for문에서 똑같이 만들기
for i in range(100):
    print(i)
    print("for")
    
    if i > 2:
        break
        
#for문에서 continue
for i in range(3):
    print(i)
    print("for-continue")
    
    if i == 1:
        continue #continue밑에 코드는 실행이 안되고 41번줄로 다시 돌아감.
                 #i 가 1이 되고 continue가 실행이 되면서 밑에 프린트가 출력이 안되는 모습.
                 #특이한 조건에서 밑에 코드를 실행시키지 않고 싶을때 continue코드를 씀!
    print("ex-continue-in-for")
