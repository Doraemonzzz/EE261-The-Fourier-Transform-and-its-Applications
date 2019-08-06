#### Problem 1

(a)$f \star g$很大说明$g$平移后和$f$很接近；很小说明不接近；正表示平移后增长趋势接近；负表示平移后增长趋势不同

(b)首先
$$
\begin{aligned}
(f \star g)(x)
&=\int_{-\infty}^{\infty} f(y) g(x+y) d y \\
&= \int_{-\infty}^{\infty} f^{-}(-y) g(x+y) d y \\
&= (f^{-} * g)(x)
\end{aligned}
$$
另一方面
$$
\begin{aligned}
(f \star g)(x)
&=\int_{-\infty}^{\infty} f(y) g(x+y) d y \\
&= \int_{-\infty}^{\infty} f(y) g^{-}(-x-y) d y \\
&= \left(f * g^{-}\right)(-x)\\
&=\left(f * g^{-}\right)^{-}(x)
\end{aligned}
$$
注意到
$$
\begin{aligned}
(g \star f)(x)
&=\left(g * f^{-}\right)^{-}  \\
&=\left( f^{-} * g\right)^{-} \\
&\neq (f^{-} * g)
\end{aligned}
$$
所以
$$
f \star g\neq g \star f
$$
(c)
$$
\begin{aligned}
(f \star \left(\tau_{b} g\right))(x)
&=\int_{-\infty}^{\infty} f(y) g(x+y-b) d y \\
&= \int_{-\infty}^{\infty} f(y) g(x-b+y) d y \\
&= (f \star g)(x-b) \\
&=(\tau_{b}(f \star g))(x)
\end{aligned}
$$
所以
$$
f \star\left(\tau_{b} g\right)=\tau_{b}(f \star g)
$$
另一方面
$$
\begin{aligned}
( \left(\tau_{b} f\right) \star g)(x)
&=\int_{-\infty}^{\infty} f(y-b) g(x+y) d y \\
&= \int_{-\infty}^{\infty} f(y-b) g(x+b+y-b) d y \\
&=\int_{-\infty}^{\infty} f(y) g(x+b+y) d y \\
&=(f \star g)(x+b)\\
&=(\tau_{-b}(f \star g))(x)
\end{aligned}
$$



#### Problem 2

(a)
$$
\begin{aligned}
\Pi \star \Pi
&=\Pi^{-} * \Pi\\
&=\Pi * \Pi\\
&=\Lambda
\end{aligned}
$$
(b)只要证明如下事实即可
$$
\int_{-\infty}^{\infty} f(y) f(x+y) d y
\le \int_{-\infty}^{\infty} f(y) f(y) d y=\int_{-\infty}^{\infty} f(y)^2 d y
$$
回顾柯西不等式
$$
\int_{-\infty}^{\infty} f(y) g(y) d y \leq\left\{\int_{-\infty}^{\infty} f(y)^{2} d y\right\}^{1 / 2}\left\{\int_{-\infty}^{\infty} g(y)^{2} d y\right\}^{1 / 2}
$$
取
$$
\begin{aligned}
f(y) & = f(y)\\
 g(y)&= f(x+y)
\end{aligned}
$$
那么
$$
\begin{aligned}
\int_{-\infty}^{\infty} f(y) f(x+y) d y
& \le \left\{\int_{-\infty}^{\infty} f(y)^{2} d y\right\}^{1 / 2}\left\{\int_{-\infty}^{\infty} f(x+y)^{2} d y\right\}^{1 / 2}\\
&=\int_{-\infty}^{\infty} f(y)^2 d y
\end{aligned}
$$
等号成立当且仅当
$$
f(y) = k f(x+y)
$$
(c)
$$
\begin{aligned}
\mathcal{F}(f \star f)
&=\mathcal{F}(f^{-} * f) \\
&=\mathcal{F}f^{-}  \mathcal{F}f  \\
&=(\mathcal{F}f)^{-} \mathcal{F}f \\
&=\overline {\mathcal F f} \mathcal F f\\
&=|\mathcal{F} f|^{2}
\end{aligned}
$$
(d)
$$
\begin{aligned}
(f \star f_{r})(t)
&= \left(f \star (\alpha\left(\tau_{2 T} f\right)+n)\right)(t)\\
&=\alpha (f\star (\tau_{2 T} f)) (t)
+(f \star n) t\\
&=\alpha \tau_{2 T}(f\star f)(t) +C \\
&= \alpha (f\star f)(t-2T) +C \\
&\le \alpha (f\star f)(0)+C
\end{aligned}
$$
当满足如下条件时取极大值
$$
t_0- 2T  = 0 \Rightarrow T=\frac{t_0}{2}
$$



#### Problem 3

Rectangle Window
$$
\mathcal  F\Pi = \text{sinc}
$$
Triangular Window

记
$$
g(t)= 2 \Lambda(2 t)
$$
那么
$$
\mathcal  F g (s)=
2 \times  \frac 1 2 \times \text{sinc}^2
\left(\frac s 2 \right)=\text{sinc}^2
\left(\frac s 2 \right)
$$
Hamming Window
$$
\begin{aligned}
\mathcal F w( s)
&=\int_{-\frac 12 }^{\frac 12 }
e^{-2\pi i st}\cos^2(\pi t)  dt \\
&=\int_{-\frac 12 }^{\frac 12 }
e^{-2\pi i st} \left( \frac{e^{-i\pi t}+e^{i\pi t}}{2}\right)^2  dt \\
&=\frac 1 4\int_{-\frac 12 }^{\frac 12 }
e^{-2\pi i st} \left(e^{-2\pi i t}+e^{2\pi i t} +2 \right)  dt \\
&=\frac 1 4 \int_{-\frac 12 }^{\frac 12 }
 \left(e^{-2\pi it(1+s)}+e^{2\pi it(1-s)} +2e^{-2\pi i st} \right)  dt \\
 &=\frac 1 4 \left(\frac{\sin (\pi (1+s))}{\pi (1+s)}+ 
 \frac{\sin (\pi (1-s))}{\pi (1-s)} +2 \frac{\sin (\pi  s)}{\pi s}\right)\\
 &=\frac 1 4 \text{sinc} (1+s) +\frac 1 4 \text{sinc} (s-1) +\frac 1 2 \text{sinc} (s)
\end{aligned}
$$



#### Problem 4

现在对方程两边关于$x$做傅里叶变换，首先对右边做傅里叶变换得到
$$
D\mathcal{F} f_{x x}(s, t)=D(2 \pi i s)^{2} \mathcal{F} f(s, t)=-4D \pi^{2} s^{2} \mathcal{F} f(s, t)
$$
其次对左边做傅里叶变换得到
$$
\begin{aligned} \mathcal{F} f_{t}(s, t) &=\int_{-\infty}^{\infty} f_{t}(x, t) e^{-2 \pi i s x} d x \quad \text { (Fourier transform in } x ) \\ &=\int_{-\infty}^{\infty} \frac{\partial}{\partial t} f(x, t) e^{-2 \pi i s x} d x \\ &=\frac{\partial}{\partial t} \int_{-\infty}^{\infty} f(x, t) e^{-2 \pi i s x} d x\\
&=\frac{\partial}{\partial t} \hat{f}(s, t) \end{aligned}
$$
所以原方程可以化为
$$
\frac{\partial \mathcal{F} f(s, t)}{\partial t}=-4D \pi^{2} s^{2} \mathcal{F} f(s, t)
$$
因此
$$
\mathcal{F}f(s, t)=\mathcal{F} f(s, 0) e^{-4 D\pi^{2} s^{2} t}
$$
最后计算初值$\mathcal{F} f(s, 0)$：
$$
\begin{aligned}
\mathcal{F} f(s, 0) &=\mathcal{F}\delta (s)\\
&=1\end{aligned}
$$
从而
$$
\mathcal{F} f(s, t)=\mathcal{F}\delta (s) e^{-4 D\pi^{2} s^{2} t} = e^{-4 D\pi^{2} s^{2} t}
$$
设
$$
h(x)= e^{-\pi x^2}
$$
回顾之前的结论，我们有
$$
\mathcal F h(s) = h(s)
$$
设
$$
g(x, t) =
a h\left(bx\right)
$$
从而
$$
\begin{aligned}
\mathcal{F} g(s, t)
& =\mathcal{F} a h\left(bx\right)\\
&=\frac a {|b |}  e^{-\frac{\pi s^2}{b^2} }
\end{aligned}
$$
因此对于
$$
e^{-4 D\pi^{2} s^{2} t}
$$
我们有
$$
\begin{aligned}
4 D\pi^{2} s^{2} t& =\frac{\pi s^2}{b^2} \\
\frac a {|b |} & =1
\end{aligned}
$$
即
$$
\begin{aligned}
 b &=\frac {1}{2 \sqrt{ D \pi t}} \\
 a&=\frac {1}{2 \sqrt{ D \pi t}} 
\end{aligned}
$$
所以
$$
g(x, t) =
\frac {1}{2 \sqrt{ D \pi t}} h\left(\frac {x}{2 \sqrt{ D \pi t}} \right)
=\frac {1}{2 \sqrt{ D \pi t}} e^{- \frac{x^2}{4D t}}
$$
因此
$$
f(x, t) = \frac {1}{2 \sqrt{ D \pi t}} e^{- \frac{x^2}{4D t}}
$$
(b)期望为
$$
0
$$
方差为
$$
2Dt
$$
(c)将
$$
D=\frac{k T}{6 \pi \eta R}
$$
代入
$$
f(x, t) = \frac {1}{2 \sqrt{ D \pi t}} e^{- \frac{x^2}{4D t}}
$$
可得
$$
f(x, t) = \frac{ \sqrt{3\eta R}}  {\sqrt{2KTt}}e^{- \frac{3\pi \eta R}{2KTt}x^2}
$$
从上式可以可以看出，温度越高，例子波动幅度越大；半径越大，粒子波动幅度越小。



#### Problem 5

这部分参考了解答的代码。

```matlab
% C B D A
% | | | |
% A B C D
[y, Fs] = audioread("PS-4-scramble.wav");
%变换为频域
z = fft(y);
plot(abs(z))
%plot(imag(z))
%步长，注意有对称性
n = floor(length(y) / 8);
C = z(1: n);
B = z(n + 1: 2 * n);
D = z(2 * n + 1: 3 * n);
A = z(3 * n + 1: 4 * n);
res = [A; B; C; D; flipud([conj(A);conj(B);conj(C);conj(D)])];
%取实部
r = real(ifft(res));
audiowrite('res.wav', r, Fs);
```

