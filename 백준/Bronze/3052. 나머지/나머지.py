arr=[]
for i in range(1,11):
    a=int(input())
    b=(a%42)
    arr.append(b)
    
s=set(arr)
print(len(s))