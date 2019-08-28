#### Problem 1

根据对称性，虚部应该为$0$。



#### Problem 2

后续记线性系统为$L$

(a)
$$
\begin{aligned}
L(\alpha v(t) +\beta u (t))
&= (\alpha v(t) +\beta u (t))\cos(\omega t) \\
&=\alpha v(t)\cos(\omega t)  +\beta u(t)\cos(\omega t)  \\
&=\alpha L (v(t))+\beta L(u(t))\\
L(v(t-\tau))&= v(t-\tau) \cos(\omega t) \\
&\neq  v(t-\tau) \cos(\omega (t-\tau))
\end{aligned}
$$
所以该系统是线性系统，但不是时不变的。

(b)
$$
\begin{aligned}
L(\alpha v(t) +\beta u (t))
&= \sin (\alpha v(t) +\beta u (t)) \\
&\neq \sin (\alpha v(t)) +\sin (\beta u (t))\\
L(v(t-\tau))&= \sin (\alpha v(t-\tau))  
\end{aligned}
$$
所以该系统不是线性系统，但是是时不变的。

(c)
$$
\begin{aligned}
L(\alpha v(t) +\beta u (t))
&=\int_{-\infty}^{\infty} (\alpha v(\tau) +\beta u (\tau)) e^{-2 \pi i t \tau} d \tau\\
&=\alpha \int_{-\infty}^{\infty} v(\tau) e^{-2 \pi i t \tau} d \tau
+\beta \int_{-\infty}^{\infty} u(\tau) e^{-2 \pi i t \tau} d \tau \\
&= \alpha L(v(t)) +\beta L(u(t))\\
L(v(t-\tau))
&=  \int_{-\infty}^{\infty} v(s -\tau) e^{-2 \pi i t s} d s\\
&= \int_{-\infty}^{\infty} v(s) e^{-2 \pi i t (s+\tau)} d s\\
&= w(t+\tau)\\
&\neq w(t-\tau)
\end{aligned}
$$
所以该系统是线性系统，但不是时不变的。

(d)
$$
\begin{aligned}
L(\alpha v(t) +\beta u (t))
&= \frac{d}{d t}\left(\alpha v(t) +\beta u (t) \right) \\
&= \alpha \frac{d}{d t} v(t) +\beta \frac{d}{d t} u(t)   \\
&= \alpha L(v(t)) +\beta L(u(t))\\

L(v(t-\tau))
&=  \frac{d}{d t} v(t-\tau)\\
&=  \frac{d}{d (t-\tau)} v(t-\tau)\\
&= w(t-\tau)
\end{aligned}
$$
所以该系统是线性系统，并且是时不变的。

(e)
$$
\begin{aligned}
L(\alpha v(t) +\beta u (t))
&\neq \alpha L(v(t)) +\beta L(u(t))\\
L(v(t-\tau))
&= \cos (\omega t+v(t -\tau))\\
&\neq w(t-\tau)
\end{aligned}
$$
所以该系统不是线性系统，同时也不是时不变的。



#### Problem 3

(a)输入为
$$
v(t)= \sum_{k=-\infty} ^{\infty} u(kT)\delta \left( t - kT\right)
$$
输出为
$$
w(t) = \sum_{k=-\infty} ^{\infty} u(kT) \Pi_T \left(t-\frac{2k+1}{2} T \right)
$$
计算$L(\alpha  v_1(t) +\beta v_2(t))$：
$$
\begin{aligned}
L(\alpha  v_1(t) +\beta v_2(t))
&= \sum_{k=-\infty} ^{\infty} (\alpha  u_1(kT) +\beta u_2(kT)) \Pi_T \left(t-\frac{2k+1}{2} T \right)\\
&=\alpha \sum_{k=-\infty} ^{\infty}  u_1(kT)\Pi_T \left(t-\frac{2k+1}{2} T \right)
+\beta \sum_{k=-\infty} ^{\infty}  u_2(kT)\Pi_T \left(t-\frac{2k+1}{2} T \right)\\
&=\alpha L(v_1(t)) +\beta L(v_2 (t))
\end{aligned}
$$
所以该系统为线性系统。

接着，计算$L(v(t-n T))$，此时输入为
$$
\begin{aligned}
v(t-nT)
&= \sum_{k=-\infty} ^{\infty} u(kT)\delta \left( t - (k+n)T\right)\\
&= \sum_{k=-\infty} ^{\infty}u((k-n)T)\delta \left( t - kT\right)
\end{aligned}
$$
所以输出为
$$
L(v(t-n T))= \sum_{k=-\infty} ^{\infty} u((k-n)T) \Pi_T \left(t -\frac{2k+1}{2} T \right)
$$
另方面，考虑$w(t-nT)$，我们有
$$
\begin{aligned}
w(t-nT)
&= \sum_{k=-\infty} ^{\infty} u(kT) \Pi_T \left(t -nT-\frac{2k+1}{2} T \right)\\
&=\sum_{k=-\infty} ^{\infty} u(kT) \Pi_T \left(t -\frac{2(n+k)+1}{2} T \right)\\
& =\sum_{k=-\infty} ^{\infty} u((k-n)T) \Pi_T \left(t -\frac{2k+1}{2} T \right)
\end{aligned}
$$
所以平移采样的整数倍是时不变的。

(b)此时输入为$\delta (t)$，所以
$$
 u(kT)=\begin{cases}
1 & k = 0\\
0 & 其他
\end{cases}
$$
输出为
$$
h(t) =  \Pi_T \left(t-\frac{1}{2} T \right)
$$
(c)转移函数为脉冲响应函数的傅里叶变换
$$
\begin{aligned}
H(s)
&=\mathcal F \mathcal h(s)\\
&=  e^{-2\pi is \frac 1 2 T} \mathcal F\Pi_T\\
&=Te^{-\pi is T} \text{sinc }(Ts)
\end{aligned}
$$



#### Problem 4

(a)因为
$$
\mathcal F w(s)= \mathcal F h(s) \mathcal F v(s)
$$
所以如果$h$带宽有限，那么$w$同样带宽有限。

(b)由定义，我们有
$$
\begin{aligned}
w(t)
&= (h * v)(t)\\
&=
 \left(\sum_{m=-\infty}^{\infty} h(m) \operatorname{sinc}(t-m)\right)*
 \left(\sum_{n=-\infty}^{\infty} v(n) \operatorname{sinc}(t-n)\right) \\
 &=\sum_{m=-\infty}^{\infty} \sum_{n=-\infty}^{\infty}
 h(m) v(n)  \left(\operatorname{sinc}(t-m)  *\operatorname{sinc}(t-n)  \right)
\end{aligned}
$$
现在对
$$
\operatorname{sinc}(t-m)  *\operatorname{sinc}(t-n)
$$
取傅里叶变换得到
$$
\begin{aligned}
\mathcal F\left(\operatorname{sinc}(t-m)  *\operatorname{sinc}(t-n)  \right)
&= e^{-2\pi i (m +n )}\Pi(s)\Pi(s)\\
&= e^{-2\pi i (m +n )}\Pi(s)
\end{aligned}
$$
取逆变换得到
$$
\operatorname{sinc}(t-m)  *\operatorname{sinc}(t-n)  = \operatorname{sinc}(t-m-n)
$$
所以
$$
\begin{aligned}
w(t)
&=\sum_{m=-\infty}^{\infty} \sum_{n=-\infty}^{\infty}
 h(m) v(n)  \operatorname{sinc}(t-m-n)\\
 &=\sum_{k=-\infty}^{\infty} \left(\sum_{m+n=k} h(m) v(n)   \right)\operatorname{sinc}(t-k)
\end{aligned}
$$
因此
$$
w(k) =\sum_{m+n=k} h(m) v(n)
$$



#### Problem 5

(a)线性性显然，只需证明时不变性，这是因为
$$
\begin{aligned}
\frac{1}{2 a} \int_{t-a}^{t+a} f(x-\tau) d x 
&=\frac{1}{2 a} \int_{t-\tau-a}^{t-\tau+a} f(x) d x 
\end{aligned}
$$
另一方面，考虑
$$
h(t)=\frac 1{2a}\Pi\left(\frac t{2a}\right)
$$
那么
$$
L f(t)=\frac{1}{2 a} \int_{t-a}^{t+a} f(x) d x
=(h*f)(t)
$$
转移函数为
$$
H(s) =\mathcal F h(t)=\text{sinc} (2as)
$$
(b)
$$
\lim_{a\to 0} \frac{1}{2 a} \int_{t-a}^{t+a} f(x) d x = f(t)
$$
另一方面
$$
\lim_{a\to 0}h(t)=\lim_{a\to 0}\frac 1{2a}\Pi\left(\frac t{2a}\right) =\delta(t)
$$
(c)输出为
$$
\begin{aligned}
h * (h * f)
&= (h * h) * f
\end{aligned}
$$
因为
$$
\begin{aligned}
\mathcal F (h* h)
&= \left(\mathcal F h(s)  \right)^2\\
&=\text{sinc}^2 (2as)
\end{aligned}
$$
所以转移函数为
$$
\text{sinc}^2 (2as)
$$
取逆变换得到
$$
(h*h)(t) =\frac 1 {2a} \Lambda\left(\frac t {2a}\right)
$$
即脉冲响应为
$$
\frac 1 {2a} \Lambda\left(\frac t {2a}\right)
$$
(d)

- $f(t)$：iii
- $Lf(t)$：ii
- $Mf (t)$：i

根据卷积可以平滑数据得到判断。



#### Problem 6

(a)
$$
\begin{aligned}
w_n
&= x\left(n\left(M T_{s}\right)\right)\\
&= x(nM T_s)\\
&= x_{nM}
\end{aligned}
$$
(b)由采样定理
$$
x(t)=\sum_{k=-\infty}^{\infty} x(kT_s)\text{ sinc}(t-kT_s)=\sum_{k=-\infty}^{\infty} x_k\text{ sinc}(t-kT_s)
$$
取$t= \frac n {M}T_s$，我们有
$$
\begin{aligned}
y_n
&=\sum_{k=-\infty}^{\infty}x_k\text{ sinc}\left(\frac n {M}T_s-kT_s\right)
\end{aligned}
$$
(c)对于有理数，使用采样定理即可，结果类似(b)。对于任意实数，找到有理数逼近即可。