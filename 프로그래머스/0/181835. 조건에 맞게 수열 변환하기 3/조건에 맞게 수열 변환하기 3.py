def solution(arr, k):
    return [num*k if k%2==1 else num+k for num in arr]
