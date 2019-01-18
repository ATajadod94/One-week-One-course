from math import floor
from numpy import median

def quicksort(input, pivot_index, count):
    if len(input) == 1:
        return 0
    if len(input) == 2:
        return 1
    if pivot_index == 'med':
        n = len(input)
        med = int(floor(n/2))
        values = [input[0],input[-1],input[med]]
        pivot = median(values)
    else:
        pivot = input[pivot_index]


    counter,left,right = partition(input,pivot)
    count += counter
    print(count)
    list =  quicksort(left,pivot_index,count).append(pivot).quicksort(right,pivot_index,count)
    return count

def partition(data,pivot):
    counter = 0
    i = 0
    j = len(data)-1
    left = []
    right = []
    for value in data:
        counter+=1
        if value < pivot:
            left.append(value)
        else:
            right.append(value)
    return counter,left,right


text_file = open("quicksort.txt", "r")
lines = text_file.read().split('\r\n')
lines.pop(-1)
data = [int(x) for x in lines]

## QUESTION: 1
#quicksort(data, 0,0)

## QUESTION: 2
quicksort(data, -1,0)

## QUESTION: 3
#quicksort(data, "med",0)
