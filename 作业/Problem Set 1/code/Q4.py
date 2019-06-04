# -*- coding: utf-8 -*-
"""
Created on Sun Jun  2 17:46:57 2019

@author: qinzhen
"""

import numpy as np
import matplotlib.pyplot as plt

#参数
nu1 = 2
nu2 = 1
start = 0
end = 5
step = 0.0001
t = np.arange(start, end, step)
v = 3 * np.cos(2 * np.pi * nu1 * t - 1.3) + 5 * np.cos(2 * np.pi * nu2 * t + 0.5)

plt.plot(t, v)
plt.show()
print(np.max(v))