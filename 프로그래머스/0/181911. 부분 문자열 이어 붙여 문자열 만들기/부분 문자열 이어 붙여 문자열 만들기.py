def solution(my_strings, parts):
    answer = []
    for string, (s,e) in zip(my_strings, parts):
        answer.append(string[s:e+1])
    return ''.join(answer)