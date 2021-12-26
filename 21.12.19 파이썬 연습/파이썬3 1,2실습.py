#인사를 하는 함수
#이름과 나이를 받아라
#나이가 10살 미만이면 "안녕" 이라고 말해라
#나이가 10살에서 20살 사이면 "안녕하세요"라고 말해라
#21이상은 "안녕하십니까" 라고 말해라
#나이가 0살 미만이면 "누구세요?"라고 말해라

def SayHello(name, age):
    if age < 10 and age >= 0:
        print("안녕, " + name)
    elif age <= 20 and age >= 10:
        print("안녕하세요, " + name) 
    elif age > 21:
        print("안녕하십니까, " + name)
    else:
        print("누구세요? " + name)
        
SayHello("태백", 22)
SayHello("동구", 11)
SayHello("정선", 9)
SayHello("응애", -10)