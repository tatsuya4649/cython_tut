import cython
import numpy as np
cimport numpy as cnp

def func1(int n):
    cdef:
        int i, sum
        list hoge
    sum = 0
    hoge = []
    for i in range(n):
        sum += 1
        hoge.append(i)
    return sum, hoge

cdef func2(cnp.ndarray temp):
    cdef:
        int i, N, sum
    sum = 0
    N = len(temp)
    for i in range(N):
        sum += temp[i]
    return sum

cpdef func3():
    pass