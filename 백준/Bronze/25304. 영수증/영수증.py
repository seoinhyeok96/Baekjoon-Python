X= int(input())
N= int(input())

total = 0
for idx in range(N):
    a, b = map(int, input().split()) #물건의 가격 a와 개수 b
    total += a*b
    
if X == total:
    print("Yes")
else:
    print("No")