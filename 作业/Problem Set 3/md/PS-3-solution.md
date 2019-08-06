#### Problem 1

因为
$$
\mathcal{F} f(s)=\int_{-\infty}^{\infty} e^{-2 \pi i s t} f(t) d t
$$
所以
$$
\begin{aligned}
W_{\mathcal Ff}
&=\frac{1}{\mathcal{F} f(0)} \int_{-\infty}^{\infty} \mathcal{F} f(s) d s\\
&=\frac 1 {\int_{-\infty}^{\infty} f(t) d t} 
\mathcal F(\mathcal F f)(0)\\
&= \frac 1 {\int_{-\infty}^{\infty} f(t) d t} 
f^{-}(0)\\
&= \frac 1 {\int_{-\infty}^{\infty} f(t) d t} 
f(0)\\
&=\frac 1 {W_f}
\end{aligned}
$$



#### Problem 2

因为
$$
\sin c(x) =\frac {\sin \pi x}{ \pi x}
$$
所以图像中的函数为
$$
f(x)=a\sin c\left(b(x- c)\right)
$$
其傅里叶变换为
$$
\mathcal F f=  ae^{2\pi i s(- c)}
\frac 1 {|b|} \Pi\left(\frac s b\right)
=\frac{ae^{-2\pi ics}}{|b|}\Pi\left(\frac s b\right)
$$



#### Problem 3

(a)
$$
g_1(t)= f(-t)
$$
所以
$$
\mathcal F g_1=\mathcal F f^{-}=(\mathcal{F} f)^{-}
\Rightarrow \mathcal F g_1(s)=F(-s)
$$
(b)
$$
g_2(t)=g_1(t-2)
$$
所以
$$
\mathcal F g_2(s)= e^{-4\pi is } \mathcal Fg_1(s)
\Rightarrow \mathcal F g_2(s)=e^{-4\pi is } F(-s)
$$
(c)
$$
g_3(t)=f(t-1)
$$
所以
$$
\mathcal F g_3(s)= e^{-2\pi is} \mathcal Ff(s)
\Rightarrow \mathcal F g_3(s)=e^{-2\pi is } F(s)
$$
(d)
$$
g_4(t)=f\left(\frac t 2\right)
$$
所以
$$
\mathcal F g_4(s)= 2 \mathcal Ff(2s)
\Rightarrow \mathcal F g_4(s)=2 F(2s)
$$
(e)
$$
g_5(t)=f(t)+f(t+2)
$$
所以
$$
\mathcal F g_5(s)=
 \mathcal Ff(s)+e^{-2\pi is (-2)} \mathcal Ff(s)
\Rightarrow \mathcal F g_5(s)=
(1+e^{4\pi is} ) F(s)
$$
(f)
$$
g_6(t)= g_1(t)+f(t)
$$
所以
$$
\mathcal F g_6(s)=
 \mathcal Ff(s)+\mathcal Ff(-s)
\Rightarrow \mathcal F g_6(s)=
F(s) +F(-s)
$$



#### Problem 4

(a)因为
$$
\Pi_a(t)=\left\{\begin{array}{ll}{1} & {|t|<a / 2} \\ 
{0} & {|t| \geq a / 2}\end{array}\right.
$$
所以如果$0<t<a$，那么
$$
\begin{aligned}
(\Pi_{a} * \Pi_{a}) (t)
&=\int_{-\infty}^{\infty} \Pi_{a} (t-x) \Pi_{a} (x) d x\\
&=\int_{t-\frac a 2}^{\frac a 2}  dx \\
&=a-t
\end{aligned}
$$
如果$-a<t<0$，那么
$$
\begin{aligned}
(\Pi_{a} * \Pi_{a}) (t)
&=\int_{-\infty}^{\infty} \Pi_{a} (t-x) \Pi_{a} (x) d x\\
&=\int_{-\frac a 2}^{t+\frac a 2}  dx \\
&=a+t
\end{aligned}
$$
其余情形都有
$$
(\Pi_{a} * \Pi_{a}) (t) =0
$$
所以
$$
(\Pi_{a} * \Pi_{a}) (t)=\left\{\begin{array}{ll}{a-|t|} & {|t|<a} \\ 
{0} & {|t| \geq a}\end{array}\right.
$$
(b)因为
$$
\begin{aligned}
(f * f) (-t)
&=\int_{-\infty}^{\infty}f (-t-x) f (x) d x\\
&=\int_{-\infty}^{\infty}f (t+x) f (-x) d x &偶函数  \\

&=\int_{\infty}^{-\infty}f (t-x) f (x) d(-x) &令x=-x \\
&= \int_{-\infty}^{\infty}f (t-x) f (x) d x\\
&=(f * f) (t)
\end{aligned}
$$
即$(f * f) (t)$是偶函数，所以只需讨论$t\ge 0$的情形。

如果$t\ge 0$，那么
$$
\begin{aligned}
(f * f) (t)
&=\int_{-\infty}^{\infty}f (t-x) f (x) d x\\
&=\int_{-\infty}^{\infty}
e^{-|t-x|-|x|}
d x\\
&=\int_{-\infty}^{0}
e^{-t+2x}
d x+\int_{0}^{t}
e^{-t}
d x+\int_{t}^{\infty}
e^{t-2x}
d x\\
&=e^{-t} \frac 1 2 +  e^{-t}t + e^t \frac 12  e^{-2t}\\
&=  e^{-t}(t+1)
\end{aligned}
$$
利用对称性可得当$t<0$时，
$$
(f * f) (t)=(f * f) (-t)= e^{t}(-t+1)
$$
因此
$$
(f * f) (t)=e^{-|t|}(|t|+1)
$$
(c)
$$
\begin{aligned}
(g * g) (t)
&=\int_{-\infty}^{\infty}g (t-x) g (x) d x\\
&=\int_{-\infty}^{\infty}
e^{-\pi (t-x)^{2} } e^{-\pi x^2}
d x\\
&=\int_{-\infty}^{\infty}
e^{-\pi (2x^2-2tx +t^2) }
d x\\
&=\int_{-\infty}^{\infty}
e^{-\pi \left(2(x-\frac t 2)^2 +\frac {t^2}2  \right)}
d x\\
&=e^{-\frac {\pi t^2}{2}} \int_{-\infty}^{\infty}
e^{-2\pi(x-\frac t 2)^2 }
d x\\
&=\frac 1 {\sqrt{2}} e^{-\frac {\pi t^2}{2}} 
\end{aligned}
$$
(e)推广：
$$
(g * g * \ldots * g)(t)
=\frac 1 {\sqrt n} e^{-\frac {\pi t^2}{n}}
$$



#### Problem 5

(a)
$$
\begin{aligned}
(f^{-} * g^{-}) (t)
&=\int_{-\infty}^{\infty}f^{-} (t-x) g^{-}(x) d x\\
&=\int_{-\infty}^{\infty}f (x-t) g(-x) d x\\
&=\int_{\infty}^{-\infty}f (-t-x) g(x) d (-x) & x=-x\\
&=\int_{-\infty}^{\infty} f (-t-x) g(x) d x\\
&= (f* g) (-t)\\
&=(f* g)^{-}(t)
\end{aligned}
$$
所以
$$
(f^{-} * g^{-})

=(f* g)^{-}
$$
另一方面
$$
\begin{aligned}
(f * g^{-}) (t)
&=\int_{-\infty}^{\infty}f (t-x) g^{-}(x) d x\\
&=\int_{-\infty}^{\infty}f (t-x) g(-x) d x\\
&=\int_{\infty}^{-\infty}f^{-} (-t+x) g(-x)dx \\
&=\int_{\infty}^{-\infty}f^{-} (-t-x) g(x) d (-x) & x=-x\\
&=\int_{-\infty}^{\infty} f^{-} (-t-x) g(x) d x\\
&=(f^{-} * g)^{-} (t)
\end{aligned}
$$
所以
$$
(f * g^{-})=(f^{-} * g)^{-}
$$
(b)
$$
\begin{aligned}
(\left(\tau_{b} f\right) * g)(t)
&=\int_{-\infty}^{\infty}\tau_{b} f (t-x) g(x) dx\\
&=\int_{-\infty}^{\infty}
f(t-x-b) g(x) dx\\
&= \int_{-\infty}^{\infty}
f(t-b-x) g(x) dx\\
&= (f * g)(t-b)\\
&= (\tau_{b}(f * g))(t)\\
&=\int_{-\infty}^{\infty}
f(t-x) g(x-b) dx & x=x+b\\

&=\int_{-\infty}^{\infty}
f(t-x) \tau_{b} g (x) dx \\
&=(f *\left(\tau_{b} g\right))(t)
\end{aligned}
$$
等式的含义为位移函数的卷积等于卷积的位移。

只需证明$f$的周期为$T$的情形：
$$
\begin{aligned}
(f*g)(t-T)
&=\tau_T(f*g)(t)\\
&=(\left(\tau_{T} f\right) * g)(t)\\
&= (f*g)(t)
\end{aligned}
$$
(c)
$$
\begin{aligned}
(\left(\sigma_{a} f\right) * g)(t)
&= \int_{-\infty}^{\infty} f(at-ax) g(x)dx\\
&=  \int_{-\infty}^{\infty} f(at-ax)  \sigma_{1/a} g(ax) dx\\
&= \frac 1{|a|}\int_{-\infty}^{\infty} f(at-x)  \sigma_{1/a} g(x) dx & x=ax\\
&=\frac 1{|a|} \sigma_{a}\left(f *\left(\sigma_{1 / a} g\right)\right)(t)
\end{aligned}
$$
所以
$$
\left(\sigma_{a} f\right) * g=\frac{1}{|a|} \sigma_{a}\left(f *\left(\sigma_{1 / a} g\right)\right)
$$
另一方面
$$
\begin{aligned}
(\left(\sigma_{a} f\right) *\left(\sigma_{a} g\right))(t)
&= \int_{-\infty}^{\infty} f(at-ax) g(ax)dx\\

&= \frac 1{|a|}\int_{-\infty}^{\infty} f(at-x) g(x) dx & x=ax\\
&=\frac 1{|a|} \sigma_{a}\left(f *g\right)(t)
\end{aligned}
$$
所以
$$
\left(\sigma_{a} f\right) *\left(\sigma_{a} g\right)=\frac{1}{|a|} \sigma_{a}(f * g)
$$



#### Problem 6

首先计算卷积
$$
\begin{aligned}
\int_{-\infty}^{\infty}
\sin 2\pi(t-x) \sin 2\pi x dx
&= \frac 1 2 
\int_{-\infty}^{\infty}
\left( \cos(2\pi(t-2x)) +\cos(2\pi t)\right) dx 
\end{aligned}
$$
所以上述积分并不存在，上述例子说明两个周期函数的卷积并不存在。



#### Problem 7

(a)
$$
p_n=\sum_{i+j+k=n} p_ip_jp_k
$$
代码如下：

```python
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
```

```
0.2997685185185185
```

(b)注意到
$$
\begin{aligned}
\mathbb E[X_i]
&=\frac1 6 \sum_{i=1}^6  i\\
&=\frac 7 2\\
\mathbb E[Y_i]
&= \frac {1\times1 +2\times 1+3\times 2
+4\times 2 +5\times 3+ 6\times 3} 
{12}\\
&=\frac {50}{12}\\
&=\frac {25}{6}\\
\mathbb E[Z_i]
&= \frac {1\times 4 +2\times 3+3\times 2
+4\times 1 +5\times 1+ 6\times 1} 
{12}\\
&=\frac {31}{12}
\end{aligned}
$$
由大数定律可得
$$
\begin{aligned}
\lim_{N\to\infty}
\frac{1}{3 N} \sum_{i=1}^{N}\left(X_{i}+Y_{i}+Z_{i}\right)
&=\mathbb E[X_i]+\mathbb E[Y_i]+\mathbb E[Z_i]\\
&=\frac 1 3\left(\frac 7 2 + \frac {25}{6}+\frac {31}{12}  \right)\\
&=\frac {41}{12}
\end{aligned}
$$
(c)代码如下：

```python
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
```

