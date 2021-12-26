# 반복되는 코드를 그룹으로 모아놓은 것 == 함수

# 내가 뭔가를 반복해서 쓰고 싶다 그런데 계속 복붙하면 코드가 너무 더러움. 
# 그때 def 함수 사용하기. chat은 div id처럼 이름을 붙이는 것
def chat(name1, name2, age): #인자를 괄호 안에 설정할 수 있음.
    print("%s: 안녕 넌 몇살이니?" % name1)
    print("%s: 나는 %d살" % (name2, age))
    
chat("윤하", "알렉스", 30)
# name1, name2를 지정해서 이런식으로 사용가능.
chat("철수", "영희", 10)

a = 1
b = 2
c = a + b

# 이렇게 반복되는 값을 def로 바꿔줄 수 있음

def xsum(a, b):
    result = a + b
    return result #print를 쓰는 대신 결과값을 return시킴
    #펑션안에 값이 필요한 펑션들은 return으로 끝내야 됨.
x = xsum(1, 2)
print(x)

def xsum(a, b):
    result = a + b
    print(result)
x = xsum(1, 2)
print(x)
#그냥 print를 해버리면 x라는 변수에 result값이 들어가지 않아서 none라고 출력됨.
    