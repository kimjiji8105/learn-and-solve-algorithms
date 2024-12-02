# 5명 그룹/가장 앞에 있는 사람의 이름/리스트

def solution(names):
    return [name for i, name in enumerate(names) if i%5==0]