def solution(todo_list, finished):
    return [num for i, num in enumerate(todo_list) if not finished[i]]