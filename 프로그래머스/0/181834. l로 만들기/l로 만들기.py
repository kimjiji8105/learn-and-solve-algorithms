def solution(myString):
    return ''.join(string if string>'l' else 'l' for string in myString)