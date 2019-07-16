# -*- coding: utf-8 -*-
"""
Created on Sat Jun 29 15:36:45 2019

@author: qinzhen
"""

import numpy as np
import matplotlib.pyplot as plt

X = np.ones(6) / 6
Y = np.array([1, 1, 2, 2, 3, 3]) / 12
Z = np.array([4, 3, 2, 1, 1, 1]) / 12
data = np.arange(1, 7)
N = 6

####(a)
def P(n):
    p = 0
    for i in range(N):
        for j in range(N):
            for k in range(N):
                if i + j + k + 3 == n:
                    p += X[i] * Y[j] * Z[k]
    
    return p

res = [7, 8, 12]
p = 0
for n in res:
    p += P(n)
print(p)

####(c)
def Print(n, M=100000):
    x = np.random.choice(data, p=X, size=(M, n))
    y = np.random.choice(data, p=Y, size=(M, n))
    z = np.random.choice(data, p=Z, size=(M, n))
    
    res = np.mean(x + y + z, axis=1) / 3
    plt.hist(res)
    plt.title("N={}".format(n))
    plt.show()
    
N = [2, 10, 100, 1000]
for n in N:
    Print(n)


