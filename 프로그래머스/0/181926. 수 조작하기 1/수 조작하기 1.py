def solution(n, control):
    for cnt in control :
        if cnt == 'w' :
            n += 1
        if cnt == 's' :
            n -= 1
        if cnt == 'd' :
            n += 10
        if cnt == 'a' :
            n -= 10
    return n
