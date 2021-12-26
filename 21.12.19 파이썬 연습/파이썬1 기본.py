print("hello world!")
x = 1
y = "2"
print(x)
print("안녕 너는 누구야" + str(4))
# 숫자와 문자는 같이 출력할 수 없음 그래서 바꿔 줘야됨 str(숫자) int
# 이걸 캐스팅 한다고 표현 그냥 하면 오류남, 아래에 예시 하나 더
print(x + int(y))
# y가 문자 형식으로 돼서 그냥 하면 오류. int로 바꿔준 상황# 불리안 조건이 참이면, 거짓이면 무엇을 해라
a = True
b = False
print(a)
print(b)
#조건문. 이떤것이 참이면, 거짓이면 무엇을 해라
if 2 > 1:
    print("hello")
if 1 > 2:
    print("hi")
if not 1 > 2:
    print("oh")
if 1 > 0 and 2 > 1:
    print("1은 0보다 크고 2는 1보다 크다")
# and는 둘 중 하나라도 거짓이면 실행이 안됨.
if 0 > 2 or 2 > 1:
    print("0이 2보다 크거나 2는 1보다 크다")
# or은 둘중 하나만 참이면 됨.
c = 3
if c > 2:
    print("c는 2보다 크다")
    
if c > 5:
    print("c는 5보다 크다")
else:
    print("c는 5보다 작다")

# 파이썬은 위에서 아래로 계산
# print("c는 3이다")
#17:34 테크보이 워니 파이썬 한시간만에 배우기