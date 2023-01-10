input_data = input().split(' ')

hour = int(input_data[0])
min = int(input_data[1])

if min >= 45 :
    min -= 45
elif hour >= 1 and min < 45 :
    hour -= 1 
    min += 15
elif hour < 1 and min < 45 :
    hour += 23
    min += 15
print(hour, min)