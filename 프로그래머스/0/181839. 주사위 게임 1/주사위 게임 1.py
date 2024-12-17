def solution(a, b):
    answer = a%2 + b%2
    return (abs(a-b) if answer == 0 else 2*(a+b) if answer == 1 else a**2+b**2)