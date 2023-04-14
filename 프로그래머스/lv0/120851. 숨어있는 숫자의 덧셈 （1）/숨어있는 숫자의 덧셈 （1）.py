import re

def solution(my_string):
    return sum(map(int, re.sub('[^1-9]', '', my_string)))