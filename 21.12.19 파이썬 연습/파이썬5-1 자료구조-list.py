#자료구조 == 리스트, 튜플, 틱셔너리

#list는 엘레멘트 여러개를 그룹핑할때 사용함. (소괄호) 사용도 가능
x = [1, 2, 3, 4]
    #0  1  2  3
y = ["hello", "world"]
z = ["hello", 1, 2, 3]

print(x + y)
print(x[0]) # x에 0번째를 보여줘

x[3] = 10 #x에 3번째 자리에 있는 것을 10으로 바꿔줘
print(x)

#예를 들어 4번째 자리에 있는걸 보여줘 == 에러가 나는 모습
#print(x[4])

#list에서 자주쓰는 함수들
num = len(x)
#x는 4개의 엘레멘트가 있음. len으로 몇개의 엘레멘트가 있는지 대신 세줌.
print(num)

#sorted는 엘레멘트들이 숫자가 정렬이 안돼있으면 정렬해주는 함수.
x = [3, 5, 2, 1]
y = sorted(x)
print(y)

#sum은 엘레멘트들을 전부 더해줌. 숫자일 때만!
x = [3, 3, 3, 3]
y = sum(x)
print(y)

#반복문과 list를 합쳐서 쓰기 예시, ==========중요하니까 기억하기!==========
x = [4, 2, 3, 1]
y = ["hello", "there"]

for n in x:
    print(n)
    #리스트의 엘레멘트들을 하나씩 돌아가면서 출력해줘.
    
for m in y:
    print(m)

#list에서는 한 엘레멘트가  어디에 있는지 찾아야되는 경우가 많음
x = [4, 2, 3, 1]
y = ["hello", "there"]

print(x.index(3)) #x리스트 안에 3이라는 엘레멘트가 어디 있냐
print(y.index("hello"))
#list에 없는걸 물어보면? -에러
print(x.index(10))
#어떤 엘레멘트의 순서는 상관없고 유무만 궁금하다 
#=== in이라는 키워드 사용 = ture, false로 알려줌. 조건문이랑 합쳐서 사용 가능.
print("hello" in y)

if "hello" in y:
    print("hello가 있다!!")