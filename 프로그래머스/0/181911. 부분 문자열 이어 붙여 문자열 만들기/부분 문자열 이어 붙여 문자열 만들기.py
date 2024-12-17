def solution(my_strings, parts):
    string = ''
    for num in range(len(my_strings)):
        string += my_strings[num][parts[num][0]:parts[num][1]+1]
    return string