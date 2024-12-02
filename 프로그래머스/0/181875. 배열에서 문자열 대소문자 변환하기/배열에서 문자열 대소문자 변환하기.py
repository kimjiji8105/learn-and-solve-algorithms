def solution(strArr):
    num = 0
    anwer = []
    for arr in strArr:
        if num%2 == 0:
            anwer.append(arr.lower())            
        else :
            anwer.append(arr.upper())  
        num += 1
    return anwer