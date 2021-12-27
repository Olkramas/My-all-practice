from os import X_OK


score_list = [90, 45, 70, 60, 55]

x = 0
for i in score_list:
    x = x + 1
    if i >= 60:
        result = "합격"
    else:
        result = "불합격"
    print("{}번 학생은 {}입니다." . format(x, result))