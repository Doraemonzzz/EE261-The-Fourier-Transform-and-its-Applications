

#### Problem 1

(1)

对于$n\neq 0$
$$
\begin{aligned}
c_{n}
&=\frac{1}{T} \int_{0}^{T} e^{-2 \pi i n t / T} f(t) d t\\
&=\frac{1}{2} \int_{0}^{2} e^{- \pi i n t}t^2 d t\\
&=\frac{1}{2} \left( t^2 \frac{ e^{- \pi i n t}}{- \pi i n }\Big|_{t=0}^{t=2} -
\int_{0}^{2} \frac{ e^{- \pi i n t}}{- \pi i n }\times 2td t\right)\\
&=-\frac  2{\pi i n} +\frac 1 { \pi i n}\int_{0}^{2}{ e^{- \pi i n t}}\times td t \\
&= -\frac  2{\pi i n}+\frac 1 { \pi i n}
\left(t \frac{ e^{- \pi i n t}}{- \pi i n }\Big|_{t=0}^{t=2} 
-\int_{0}^{2} \frac{ e^{- \pi i n t}}{- \pi i n }d t\right)
\\
&=-\frac  2{\pi i n} +\frac 2{\pi^2n^2}


\end{aligned}
$$
对于$n=0$
$$
\begin{aligned}
c_{n}
&=\frac{1}{T} \int_{0}^{T} f(t) d t\\
&=\frac{1}{2} \int_{0}^{2} t^2 d t\\
&=\frac 4 3
\end{aligned}
$$
(2)
$$
t^2=\frac 4 3+\sum_{n=-\infty,n\neq 0}^{\infty} \left(-\frac  2{\pi i n} +\frac 2{\pi^2n^2}\right) e^{\pi int}
$$
取$t=0$，得到
$$
\begin{aligned}
\frac {0+2^2} 2
&= 2\\
&=\frac 4 3 +\sum_{n=-\infty,n\neq 0}^{\infty} \left(-\frac  2{\pi i n} +\frac 2{\pi^2n^2}\right) \\
&=\frac 4 3 +\sum_{n=-\infty}^{-1} \left(-\frac  2{\pi i n} +\frac 2{\pi^2n^2}\right) 
+\sum_{n=1}^{\infty} \left(-\frac  2{\pi i n} +\frac 2{\pi^2n^2}\right) \\
&=\frac 4 3+ 4\sum_{n=1}^{\infty} \frac1{\pi^2n^2}
\end{aligned}
$$
所以
$$
\sum_{n=1}^{\infty} \frac{1}{n^{2}}=\frac{\pi^{2}}{6}
$$
取$t=1$，得到
$$
\begin{aligned}
1&=\frac 2 3 +\sum_{n=-\infty,n\neq 0}^{\infty} \left(-\frac  2{\pi i n} +\frac 2{\pi^2n^2}\right) (-1)^{n+1}\\
&=\frac 2 3 +\sum_{n=-\infty}^{-1} \left(-\frac  2{\pi i n} +\frac 2{\pi^2n^2}\right)  (-1)^{n+1}
+\sum_{n=1}^{\infty} \left(-\frac  2{\pi i n} +\frac 2{\pi^2n^2}\right) (-1)^{n+1} \\
&=\frac 2 3 +\sum_{n=1}^{\infty} \left(\frac  2{\pi i n} +\frac 2{\pi^2n^2}\right)  (-1)^{-n+1}
+\sum_{n=1}^{\infty} \left(-\frac  2{\pi i n} +\frac 2{\pi^2n^2}\right) (-1)^{n+1} \\
&=\frac 2 3 +4\sum_{n=1}^{\infty} \frac{(-1)^{n+1}}{\pi^2n^{2}}
\end{aligned}
$$
所以
$$
\sum_{n=1}^{\infty} \frac{(-1)^{n+1}}{n^{2}}=\frac{\pi^{2}}{12}
$$
将之前两个等式相加得到
$$
\frac{3 \pi^2}{12}= \sum_{n=1}^{\infty} \frac{1}{n^{2}}+\sum_{n=1}^{\infty} \frac{(-1)^{n+1}}{n^{2}}
=\sum_{n=0}^{\infty} \frac{2}{(2 n+1)^{2}}
$$
所以
$$
\sum_{n=0}^{\infty} \frac{1}{(2 n+1)^{2}}=\frac{\pi^{2}}{8}
$$



#### Problem 2+

记
$$
e_{n}(t)=\frac{1}{\sqrt{T}} e^{2 \pi i n t / T}
$$
不难得到
$$
\left(e_{n}, e_{m}\right)=\left\{\begin{array}{ll}{1} & {n=m} \\ {0} & {n \neq m}\end{array}\right.
$$
以及
$$
\left(f, e_{n}\right)=\frac{1}{\sqrt{T}} \int_{0}^{T} f(t) e^{-2 \pi i n t / T} d t
={\sqrt T}c_n
$$
所以
$$
f=\sum_{n=-\infty}^{\infty}\left(f, e_{n}\right) e_{n}
$$
两边取模得到
$$
\begin{aligned} 
\int_{0}^{1}|f(t)|^{2} d t &=\|f\|^{2}\\
&=(f, f) \\
&=\left(\sum_{n=-\infty}^{\infty}\left(f, e_{n}\right) e_{n}, \sum_{m=-\infty}^{\infty}\left(f, e_{m}\right) e_{m}\right) \\
&=\sum_{n, m}\left(f, e_{n}\right) \overline{\left(f, e_{m}\right)}\left(e_{n}, e_{m}\right)\\
&=\sum_{n, m=-\infty}^{\infty}\left(f, e_{n}\right) \overline{\left(f, e_{m}\right)} \delta_{n m} \\ 
&=\sum_{n=-\infty}^{\infty}\left(f, e_{n}\right)\overline{\left(f, e_{n}\right)}\\
&=\sum_{n=-\infty}^{\infty}\left|\left(f, e_{n}\right)\right|^{2}\\
&=\sum_{n=-\infty}^{\infty}T|c_n|^{2} 
\end{aligned}
$$
因此
$$
\frac 1 T \int_{0}^{1}|f(t)|^{2} d t =\sum_{n=-\infty}^{\infty}|c_n|^{2} 
$$



#### Problem 3

略过



#### Problem 4

(a)回顾
$$
\Lambda(x)=\left\{\begin{array}{ll}{1-|x|} & {|x| \leq 1} \\ {0} & {\text { otherwise }}\end{array}\right.
$$
记
$$
\Lambda_a(x)=\Lambda(\frac x a)=\left\{\begin{array}{ll}{1-|\frac x a|} & {|\frac x a| \leq 1} \\ {0} & {\text { otherwise }}\end{array}\right.
$$
不难看出上图的函数为
$$
2\Lambda_2(x-2) +2.5\Lambda_2(x-4)
$$
所以该函数的傅里叶变换为
$$
\begin{aligned}
2e^{-2\pi is 2}2\operatorname{sinc}^{2} (2s)
+2.5e^{-4\pi is2}2\operatorname{sinc}^{2} (2s)
&=\operatorname{sinc}^{2} (2s)
\left(4e^{-4\pi is }+5e^{-8\pi is }\right)
\end{aligned}
$$
(b)同(a)可得，考虑$[kT,(k+2)T]$区间，该区间对应的$\Lambda$函数为
$$
f((k+1)T) \Lambda_{T}(x-(k+1)T)
$$
所以
$$
\begin{aligned}
g(x)&=\sum_{k=0}^{n-2}f((k+1)T) \Lambda_{T}(x-(k+1)T)\\
\mathcal{F} g(s)
&=\sum_{k=0}^{n-2} f((k+1)T) e^{-2(k+1)T\pi is }   T\operatorname{sinc}^{2} (Ts)\\
&=T\operatorname{sinc}^{2} (Ts) \sum_{k=1}^{n-1} f(kT) e^{-2kT\pi is } 
\end{aligned}
$$



#### Problem 5

(a)
$$
\begin{aligned}
\mathcal{F} g(s)
&=\int_{-\infty}^{\infty} e^{-2\pi ist} f(t) \cos \left(2 \pi s_{0} t\right) dt\\
&=\frac 1 2\int_{-\infty}^{\infty} e^{-2\pi ist} f(t)
\left(e^{2 \pi i s_{0} t}+e^{-2 \pi i s_{0} t}\right) dt\\
&= \frac 1 2\int_{-\infty}^{\infty} e^{-2\pi i(s-s_0)t} f(t)dt+
\frac 1 2\int_{-\infty}^{\infty} e^{-2\pi i(s+s_0)t} f(t)dt\\
&= \frac{1}{2} \mathcal{F} f\left(s-s_{0}\right)+\frac{1}{2} \mathcal{F} f\left(s+s_{0}\right)
\end{aligned}
$$
(b)图形对应的函数为
$$
\Lambda_2(x-4)+\Lambda_2(x+4)
=\frac 12 \times 2\Lambda_2(x-4)+\frac 12 \times 2\Lambda_2(x+4)
$$
注意到
$$
\mathcal{F} \operatorname{sinc}^{2}=\Lambda
$$
记
$$
f(t)= 4\operatorname{sinc}^{2}(2t) 
$$
那么
$$
\begin{aligned}
\mathcal{F} \left(f\right)=4\times\frac 12 \Lambda_2=2\Lambda_2
\end{aligned}
$$
结合(a)可得
$$
g(t) =4\operatorname{sinc}^{2}(2t)\cos \left(8 \pi  t\right)
$$



#### Problem 6

$$
\begin{aligned}
\hat{g}(n)
&=\int_{-\frac 1 2}^{\frac 12 }e^{-2\pi int} g(t) dt\\
&=\int_{-\frac 1 2}^{\frac 12 }e^{-2\pi int} \sum_{k=-\infty}^{\infty} f(t-k) dt\\
&= \sum_{k=-\infty}^{\infty}\int_{-\frac 1 2}^{\frac 12 }e^{-2\pi int} f(t-k) dt\\
&=\sum_{k=-\infty}^{\infty} \int_{k-\frac 1 2}^{k+\frac 12 }e^{-2\pi in(t+k)} f(t) dt\\
&=\sum_{k=-\infty}^{\infty} e^{-2\pi ink}\int_{k-\frac 1 2}^{k+\frac 12 }e^{-2\pi int} f(t) dt\\
&= \sum_{k=-\infty}^{\infty} \int_{k-\frac 1 2}^{k+\frac 12 }e^{-2\pi int} f(t) dt\\
&= \int_{-\infty}^{\infty }e^{-2\pi int} f(t) dt\\
&=\mathcal{F} f(n)
\end{aligned}
$$



#### Problem 7

(a)因为
$$
\lim_{s\to 0} \frac{\sin (2 \pi s)-2 \pi s} {4 \pi^{2} s^{2}}
= \lim_{s\to 0} \frac{-\frac 1 6(2\pi s)^3}{4 \pi^{2} s^{2}} =0
$$
所以$s=0$不是奇异点。

(b)因为$h(x)$是实，奇函数，所以$\mathcal{F} h(s)$是纯虚数，因此$\angle \mathcal{F} h(s)$为$\frac \pi 2$或$-\frac \pi 2$

(c)
$$
\begin{aligned}
\int_{-\infty}^{\infty} \mathcal{F} g(s) \cos (\pi s) d s
&=\frac 1 2\int_{-\infty}^{\infty} \mathcal{F} g(s) \left(e^{i\pi s} +e^{-i\pi s}\right)d s\\
&=\frac 12  \int_{-\infty}^{\infty} \left(\mathcal{F} g(s)+ \mathcal{F} g(-s)\right) e^{i\pi s}d s
\end{aligned}
$$
注意到
$$
\begin{aligned}
\mathcal Fg +(\mathcal Fg)^- 
&=\mathcal Fg+\mathcal Fg^- \\
&=\mathcal F\left(g+g^-\right)\\
&=\mathcal F h
\end{aligned}
$$
因此
$$
\begin{aligned}
\int_{-\infty}^{\infty} \mathcal{F} g(s) \cos (\pi s) d s

&=\frac 12  \int_{-\infty}^{\infty} \mathcal F he^{ 2i\pi s \times\frac 1 2}d s\\
&=\frac 12  \mathcal F^{-1}\mathcal F h(\frac 12 )\\
&=\frac 1 2h(\frac 12 )\\
&=\frac 1 4
\end{aligned}
$$
(d)
$$
\begin{aligned}
\int_{-\infty}^{\infty} \mathcal{F} h(s) e^{4i  \pi s} d s
&= \int_{-\infty}^{\infty} \mathcal{F} h(s) e^{2i \pi s \times 2} d s \\
&=\mathcal F^{{-1}}\mathcal{F} h(2) \\
&=h(2) \\
&=0
\end{aligned}
$$
(e)由对称性可得
$$
\begin{aligned}
\Re \mathcal{F} g(s)
&=\frac 12 \Re \mathcal{F} \Pi(s)\\
&=\frac 12  \operatorname{sinc}^{2}(s) 
\end{aligned}
$$
(f)依然由对称性，我们有
$$
\begin{aligned}
\Im \mathcal{F} h(s)
&=2\Im \mathcal{F} g(s)\\
&=2 \frac{\sin (2 \pi s)-2 \pi s} {4 \pi^{2} s^{2}}\\
&= \frac{\sin (2 \pi s)-2 \pi s} {2 \pi^{2} s^{2}}
\end{aligned}
$$
(g)
$$
\begin{aligned}
c_k&=\frac 12 \int_{-1}^1
e^{-\pi ikx} h(x) dx\\
&=\frac 12 \int_{-1}^1
e^{-\pi i2x (\frac k 2)} h(x) dx\\
&=\frac 12 \mathcal Fh(\frac k2)\\
&=i  \frac{\sin ( \pi k)- \pi k} {\pi^{2} k^{2}} & \mathcal{F} h(s)是纯虚数\\
&=-\frac i {\pi k}
\end{aligned}
$$
