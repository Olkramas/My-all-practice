#튜플. tuple
#list에서 쓰던걸 웬만하면 다 쓸 수 있음. list랑 많이 비슷함.

x = (1, 2, 3)
y = ('a', 'b', 'c')
z = (1, "hello", "there")

print(x + y)
print('a' in y) #y에 a라는 엘레메트가 있나
print(z.index(1)) #z에서 1이라는 엘레멘트가 몇번째 자리에 있나

#튜플과 리스트의 가장크 차이점.
#=== assignment- 튜플안에 값을 업데이트 하는 것
x[0] = 10  #======== list에서 됐던 엘레멘트를 바꾸는게 tuple에서는 안됨.

for n in x:
    print(n)