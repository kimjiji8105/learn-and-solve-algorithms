def solution(numLog):
    Log = [numLog[num+1]-numLog[num] for num in range(len(numLog)) if num != len(numLog)-1 ]
    return ''.join('w' if log == 1 else 's' if log == -1 else 'd' if log == 10 else 'a'  for log in Log )