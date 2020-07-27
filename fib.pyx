import numpy as np
cimport numpy as np


def fib(int n):
    """Print the first n Fibonacci numbers."""
    
    cdef int a = 0
    cdef int b = 1
    cdef int i = 1
    cdef np.ndarray[np.int64_t, ndim=1] result = np.zeros((n,), dtype=np.int64)

    # Edge case
    result[0] = a
    result[1] = b
    a, b = b, a + b

    # Main body
    while i < n:
        result[i] = a
        a, b = b, a + b
        i += 1

    return result
