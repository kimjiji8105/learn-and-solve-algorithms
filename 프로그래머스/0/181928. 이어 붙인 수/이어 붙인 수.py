def solution(num_list):
    odd = ''
    even = ''
    
    for num in num_list:
        if num % 2 == 0:
            odd = odd+str(num)
        else:
            even = even+str(num)
    return int(even)+int(odd)

    
    