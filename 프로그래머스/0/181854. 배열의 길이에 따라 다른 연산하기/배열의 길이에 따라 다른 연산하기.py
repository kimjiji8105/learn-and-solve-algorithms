def solution(arr, n):
    return [arr[num]+n if (num%2 == 1)&(len(arr)%2==0) | (num%2 == 0)&(len(arr)%2==1) else arr[num] for num in range(len(arr))]