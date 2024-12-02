def solution(arr):
    return [num/2 if (num>=50)&(num%2==0) else num*2 if (num<50)&(num%2!=0) else num for num in arr]