# class : 반복되는 불 필요한 소스코드를 최소하 하면서
# 현실세계의 사물을 컴퓨터 프로그래밍 상에서 쉽게 표현할 수 있도록 해주는 프로그래밍 기술

# 인스턴스 : 클래스로 정의된 객체를 프로그램 상에서 이용할 수 있게 만든 변수

#클래스의 멤버 : 클래스 내부에 포함되는 변수
#클래스의 함수 : 클래스 내부에 포함되는 함수. 메소드

class car:
    #클래스의 생성자, 생성자의 형태는 정해져 있다.
    def __init__(self, name, color): #car가 가지는 특성을 name, color로 설정가능(특정한 오브젝트가 가지고 있는 특징을 하나의 변수로 지정해주는 과정)
        #class를 이용해서 인스턴스를 만들기 위해서는 생성자(__init__)가 필요함. 함수로 존재하고 init을 가짐. 
        #매계 변수로 self라는 것을 기본적으로 가짐.
        self.name = name #클래스의 멤버(name)
        self.color = color #클래스의 멤버(color)
    
    #클래스의 메소드(생성자와 다르게 내가 마음대로 정의해서 사용할 수 있음.)
    def show_info(self):
        print("model:", self.name, "color:", self.color)


car1 = car("sonata", "red")
car1.show_info()

car2 = car("avante", "blue")
car2.show_info()