from math import floor
from numpy import median, where


def quicksort(data, index):
    '''
    :param data:
    :param index: string which can take the value of  first, last or median
    :return:
    '''
    if len(data) == 1:
        return data
    else:
        pivot_loc, pivot_val = pivot_setter(data, index)
        data.pop(pivot_loc)
        left, right = partition(data, pivot_val)
        left.append(pivot_val)
        left += right
        return left

def partition(data, pivot):
    def swap(i, j):
        temp = data[i]
        data[i] = data[j]
        data[j] = temp

    i = 0
    j = len(data) - 1
    while i < j:
        item = data[i]
        if item < pivot:
            i += 1
        else:
            swap(i, j)
            j -= 1
    return data[0:i], data[i::]


def pivot_setter(data, index):
    '''
    :param data:
    :param index:  string which can take the value of  first, last or median 
    :return: index of the quick sort pivot and the value of the pivot 
    '''
    if index == 'first':
        return 0, data[0]
    elif index == 'last':
        return -1, data[-1]
    elif index == 'median':
        n = len(index)
        median_idx = floor(n / 2)
        pot_idx = [0, -1, median_idx]
        pot_pivots = [data[0], data[-1], data[median_idx]]
        piv_val = median(pot_pivots)
        piv_idx = where(pot_pivots == piv_val)
        return pot_idx[piv_idx], piv_val


print(quicksort([2, 4, 10, 1, 3], 'first'))
