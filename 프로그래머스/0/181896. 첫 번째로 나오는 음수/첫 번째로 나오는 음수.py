# return 문이나 next()는 첫 번째로 찾은 값을 반환하고 함수가 종료됨
def solution(num_list):
    return next((i for i,num in enumerate(num_list) if num<0), -1)