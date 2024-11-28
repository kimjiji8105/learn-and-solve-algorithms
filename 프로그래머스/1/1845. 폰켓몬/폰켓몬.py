# nums는 폰켓몬의 종류 번호가 담긴 1차원 배열

def solution(nums):
    n = len(nums)/2
    uni_li = len(set(nums))
    
    if uni_li > n :
        return n
    else :
        return uni_li