# 클래스 : 함수와 변수들의 함 (빵틀 : 클래스)
# 오브젝트 : 클래스를 이용해서 만들어낸 물체 (빵틀을 이용해 만들어낸 빵)

class person:
    name = "태백" #변수도 class안에 들어갈 수 있음.

    def hello(self):
        print("hello i'm " + self.name) #만들어진 물체에 변수를 활용해야 될때 self사용.

p = person()
p.hello()
#====================
#사람을 많이 넣어서 그대로 코드를 돌리면 name안에 있는 "태백"만 할당됨.
#그래서 person을 쓸때 변수를 같이 설정하고 싶음.
# = name변수를 "태백"으로 고정시키지 않고 싶다는 말.

class person:
    def __init__(self, name): #init함수는 self를 첫 인자로 받고, person에서 새로 쓸 변수를 설정할 수 있음.(name)
        self.name = name

    def hello(self):
        print("안녕 " + self.name)

태백 = person("태백") #여기서 설정 가능
뱅미 = person("뱅미")
상현 = person("상현")

태백.hello()
뱅미.hello()
상현.hello()

#=====================

class person:
    def __init__(self, name):
        self.name = name

    def hello(self, to_name): #여기서도 두번째 인자 설정가능
        print("안녕 "+ to_name +" 나는 " + self.name)

태백 = person("태백")
뱅미 = person("뱅미")
상현 = person("상현")

태백.hello("선생님") #없던 인자를 넣어줌.
뱅미.hello("선생님")
상현.hello("선생님")

#init은 person이라는 오브젝트를 만들때 name이라는 인자를 받아서(35번)
#name이라는 변수에 그 값을 넣어라 (36번)

#=====================

class person:
    def __init__(self, name, age):
        self.name = name
        self.age = age #age 라는 인자를 추가해 주기 위해 55번에서도 추가한 모습.

    def hello(self, to_name):
        print("안녕 "+ to_name +" 나는 " + self.name)

    def introduce(self):
        print("내 이름은 " + self.name + "그리고 나는 " + str(self.age) + "살이야")

태백 = person("태백", 23) #age라는 변수가 새로 생겨서 같이 넣어준 모습.
뱅미 = person("뱅미", 24)
상현 = person("상현", 24)

태백.introduce()
뱅미.introduce()
상현.introduce()
