def solution(n, k):
    return [k+(k*num) for num in range(n//k)]