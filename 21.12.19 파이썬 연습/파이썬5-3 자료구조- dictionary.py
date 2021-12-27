#dictionary

x = {}
y = {}

print(x)
print(y)

#dictionary는 key와 value로 이루어져 있음

x = {
    "name": "워니",
    "age": 20,
}

print(x["name"]) #x라는 dictionary의 key("name")에 있는 value("워니")가 뭔지 출력
print(x["age"])

#key 값에는 불변하는 값들만 들어갈 수 있음.
#5-1에서 배운 list는 가변하기 때문에 딕셔너리의 key로는 쓸 수 없음.

# 같은 예시 하나 더
x = {
    0: "hi",
    1: "hello",
    "age": 20,
}
print(x[0])
print(x[1])
print(x["age"])

#list 와 마찬가지로 dictionary에 어떤 key가 있는지 볼 수 있음.
print("age" in x) #age라는 key 가 x안에 들어있나

print(x.keys()) #dictionary에 있는 모든 키를 출력
print(x.valuse()) #dictionary에 있는 모든 value를 출력

#list처럼 엘레멘트들을 출력할 수 있음.
for key in x:
    print("key:" + str(key))
    print("value:" + str(x[key]))
#dictionary의 엘레멘트들을 출력. key: (key) value: (value)

#dictionary도 list처럼 값을 바꿀 수 있음
x["name"] = "변경!"
print(x)
#value값을 바꿔준 모습.
#새로운 key값고 새로운value를 넣는 것도 가능함.
x["새로운key"] = "새로운 value"
print(x)