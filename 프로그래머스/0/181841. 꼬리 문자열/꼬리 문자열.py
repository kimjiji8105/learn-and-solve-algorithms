def solution(str_list, ex):
    return ''.join(li for li in str_list if ex not in li)
    