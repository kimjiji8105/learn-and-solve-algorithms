# 한 자리 정수로 이루어진 문자열 num_str
# 각 자리수의 합을 return

def solution(num_str):
    return sum(map(int, list(num_str)))