# -*- coding: utf-8 -*-
"""
Created on Sat Jun  1 15:57:03 2019

@author: qinzhen
"""

import numpy as np
import matplotlib.pyplot as plt

def Lambda(t, a):
    t1 = np.abs(t)
    r = 1 - t1 / a
    index = (t1 > a)
    r[index] = 0
    
    return r

def f(T, n=5):
    #10个周期的点
    t = np.linspace(-n * T, n * T, 1000)
    r = Lambda(t, 1 / 2)
    for i in range(1, n):
        r1 = Lambda(t - i * T, 1 / 2)
        r2 = Lambda(t + i * T, 1 / 2)
        r += r1
        r += r2
    plt.plot(t, r)
    plt.title("T={}".format(T))
    plt.xlim(-(n-1) * T, (n-1) * T)
    plt.show()

T = [1/2, 3/4, 1, 2]
for t in T:
    f(t)



