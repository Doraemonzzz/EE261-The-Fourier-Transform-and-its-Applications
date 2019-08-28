#### Problem 1

$$
\begin{aligned}
\mathcal F g(x,y)
&=\mathcal F \left(\Pi(x) \Pi(y) \right)
\mathcal F \left(\Pi(x) \Pi(y) \right)\\
&= \mathcal F^2 (\Pi(x))\mathcal F^2 (\Pi(y))\\
&=\text{sinc}^2(\xi)\text{ sinc}^2(\eta)\\
&=\mathcal F(\Lambda(x)\Lambda(y))
\end{aligned}
$$

取逆变换可得
$$
g(x,y) = \Lambda(x)\Lambda(y)
$$



#### Problem 2

注意汉高变换为
$$
G(\rho)=2 \pi \int_{0}^{\infty} g(r) J_{0}(2 \pi r \rho) r d r
$$
考虑$g(ar)$的汉高变换
$$
\begin{aligned}
2 \pi \int_{0}^{\infty} g(a r) J_{0}(2 \pi r \rho) r d r
&=\frac{2 \pi}{a} \int_{0}^{\infty} g(r') J_{0}(2 \pi (r' /a) \rho) r'/ a d r'\\
&=\frac{2 \pi}{a^2} \int_{0}^{\infty} g(r') J_{0}(2 \pi r'(\rho /a) ) r' d r'\\
&=\frac{1}{|a|^{2}} G\left(\frac{\rho}{a}\right)
\end{aligned}
$$



#### Problem 3

(a)
$$
\begin{aligned}
\mathcal F\left(\sin 2 \pi a x_{1} \sin 2 \pi b x_{2}\right)
&= \mathcal F(\sin 2 \pi a x_{1})\mathcal F(\sin 2 \pi b x_{2})\\
&=\frac{1}{2 i}\left(\delta(\xi_1-a)-\delta(\xi_1+a)\right) \frac{1}{2 i}\left(\delta(\xi_2 -b)-\delta(\xi_2+b)\right)\\
&=-\frac 1 4 \left(
\delta(\xi_1-a, \xi_2-b) -\delta(\xi_1+a, \xi_2-b)
-\delta(\xi_1-a, \xi_2+b)+\delta(\xi_1+a, \xi_2+b)
\right)
\end{aligned}
$$
(b)注意到我们有
$$
\begin{aligned}
\mathcal F e^{-\pi x^2}
=\mathcal F e^{-\pi s^2}
\end{aligned}
$$
所以
$$
\begin{aligned}
\mathcal F e^{-ax^2}
&=\mathcal F e^{-\pi \left(\frac{\sqrt a}{\sqrt \pi} x\right)^2 }\\
&= \sqrt{\frac \pi a}  e^{-as^2}
\end{aligned}
$$
从而
$$
\begin{aligned}
\mathcal F e^{-ar^2}
&= \mathcal F e^{-a(x^2+y^2)}\\
&=\mathcal F e^{-ax^2}\mathcal F e^{-ay^2}\\
&=\frac \pi a e^{-a\xi_1^2}e^{-a\xi_2^2}
\end{aligned}
$$
(c)
$$
\cos (2 \pi c x) =\frac{1}{2}\left(e^{2\pi icx}+e^{-2\pi icx}\right)
$$
所以
$$
\begin{aligned}
\mathcal F\left(e^{-2 \pi i(a x+b y)} \cos (2 \pi c x)\right)
&=\mathcal F\left(e^{-2 \pi i(a x+b y)}\frac{1}{2}\left(e^{2\pi icx}+e^{-2\pi icx}\right)\right)
\\
&=\frac 12  \left(\mathcal F (e^{-2 \pi i((a-c) x+b y)})+e^{-2 \pi i((a+c) x+b y)}\right)\\
&=\frac 12 \left(\mathcal F  (e^{-2 \pi i(a-c) x})  \mathcal F (e^{-2 \pi ib y})+

\mathcal F  (e^{-2 \pi i(a+c) x})  \mathcal F (e^{-2 \pi ib y})
\right)\\
&=\frac 12 \left(\delta(\xi_1 + a-c) \delta(\xi_2 +b) + \delta(\xi_1 + a+c) \delta(\xi_2 +b)\right)\\
&=\frac 12 \left(\delta(\xi_1 +a-c, \xi_2 +b)+\delta(\xi_1 +a+c, \xi_2 +b)\right)
\end{aligned}
$$
(d)
$$
\begin{aligned}
\cos (2 \pi(a x+b y))
&= \cos (2\pi a x) \cos(2\pi by)
-\sin (2\pi a x) \sin(2\pi by)
\end{aligned}
$$
取傅里叶变换可得
$$
\begin{aligned}
\mathcal F\left(\cos (2 \pi(a x+b y))\right)
&=  \mathcal F \left(\cos (2\pi a x) \cos(2\pi by)\right)
-\mathcal F \left(\sin (2\pi a x) \sin(2\pi by)\right)\\
&=\frac 1 4 \left(\left( \delta(\xi_1 -a)+\delta(\xi_1 +a)\right)\left( \delta(\xi_2 -b)+\delta(\xi_2 +b)\right)  \right)
\\
&+\frac 1 4 \left(\left( \delta(\xi_1 -a)-\delta(\xi_1 +a)\right)\left( \delta(\xi_2 -b)-\delta(\xi_2 +b)\right)  \right)\\
&= \frac 1 2 \left(\delta(\xi_1 -a, \xi_2 -b) +\delta(\xi_1 +a, \xi_2 +b) \right)
\end{aligned}
$$



#### Problem 4

(a)
$$
\begin{aligned}
\mathcal F g(\xi_1, \xi_2)
&=\int_{-\infty}^{\infty}\int_{-\infty}^{\infty}
e^{-2\pi (\xi_1 x_1+\xi_2 x_2)}
g(x_1,x_2) dx_1 dx_2\\
&=\int_{-\infty}^{\infty}\int_{-\infty}^{\infty}
e^{-2\pi (\xi_1 x_1+\xi_2 x_2)}
f(-x_1,x_2) dx_1 dx_2\\
&=\int_{-\infty}^{\infty}\int_{-\infty}^{\infty}
e^{-2\pi (-\xi_1 x_1+\xi_2 x_2)}
f(x_1,x_2) dx_1 dx_2\\
&=\mathcal F  f(-\xi_1, \xi_2)
\end{aligned}
$$
(b)
$$
\begin{aligned}
\mathcal F h(\xi_1, \xi_2)
&=\int_{-\infty}^{\infty}\int_{-\infty}^{\infty}
e^{-2\pi (\xi_1 x_1+\xi_2 x_2)}
h(x_1,x_2) dx_1 dx_2\\
&=\int_{-\infty}^{\infty}\int_{-\infty}^{\infty}
e^{-2\pi (\xi_1 x_1+\xi_2 x_2)}
f(x_1,-x_2) dx_1 dx_2\\
&=\int_{-\infty}^{\infty}\int_{-\infty}^{\infty}
e^{-2\pi (\xi_1 x_1-\xi_2 x_2)}
f(x_1,x_2) dx_1 dx_2\\
&=\mathcal F  f(\xi_1, -\xi_2)
\end{aligned}
$$
(c)
$$
\begin{aligned}
\mathcal F k(\xi_1, \xi_2)
&=\int_{-\infty}^{\infty}\int_{-\infty}^{\infty}
e^{-2\pi (\xi_1 x_1+\xi_2 x_2)}
k(x_1,x_2) dx_1 dx_2\\
&=\int_{-\infty}^{\infty}\int_{-\infty}^{\infty}
e^{-2\pi (\xi_1 x_1+\xi_2 x_2)}
f(x_2,x_1) dx_1 dx_2\\
&=\int_{-\infty}^{\infty}\int_{-\infty}^{\infty}
e^{-2\pi (\xi_2 x_1+\xi_1 x_2)}
f(x_1,x_2) dx_1 dx_2\\
&=\mathcal F  f(\xi_2, \xi_1)
\end{aligned}
$$
(d)
$$
\begin{aligned}
\mathcal F m(\xi_1, \xi_2)
&=\int_{-\infty}^{\infty}\int_{-\infty}^{\infty}
e^{-2\pi (\xi_1 x_1+\xi_2 x_2)}
m(x_1,x_2) dx_1 dx_2\\
&=\int_{-\infty}^{\infty}\int_{-\infty}^{\infty}
e^{-2\pi (\xi_1 x_1+\xi_2 x_2)}
f(-x_2,-x_1) dx_1 dx_2\\
&=\int_{-\infty}^{\infty}\int_{-\infty}^{\infty}
e^{-2\pi (-\xi_2 x_1-\xi_1 x_2)}
f(x_1,x_2) dx_1 dx_2\\
&=\mathcal F  f(-\xi_2, -\xi_1)
\end{aligned}
$$



#### Problem 5

(a)考虑$f$第$m$行$f_m[l]$，我们有
$$
\begin{aligned}
\mathcal F f_m[l] 
&=\sum_{n=0}^{N-1} f_{m}[n]\omega_{N}^{-l n}\\
&=\sum_{n=0}^{N-1}f[m,n]\omega_{N}^{-l n}
\end{aligned}
$$
那么
$$
\begin{aligned}
\mathcal{F} f[k, l]
&=\sum_{m=0}^{M-1} \sum_{n=0}^{N-1} f[m, n] \omega_{N}^{-l n} \omega_{M}^{-k m}\\
&= \sum_{m=0}^{M-1}   \mathcal F f_m[l]\omega_{M}^{-k m}
\end{aligned}
$$
所以可以先利用FFT计算$\mathcal F f_m[l] $，然后再利用FFT计算二维的结果。

(b)
$$
\begin{aligned}
\mathcal{F} g[k, l]
&=\sum_{m=0}^{M-1} \sum_{n=0}^{N-1} g[m, n] \omega_{N}^{-l n} \omega_{M}^{-k m}\\
&=\sum_{m=0}^{M-1} \sum_{n=0}^{N-1} f[m, n] \omega_{M}^{m k_{0}} \omega_{N}^{n l_{0}} \omega_{N}^{-l n} \omega_{M}^{-k m}\\
&=\sum_{m=0}^{M-1} \sum_{n=0}^{N-1} f[m, n]  \omega_{N}^{n (l_{0}-l)} 
\omega_{M}^{m (k_{0}-k)}\\
&=\mathcal F [ k-k_0,l-l_0]
\end{aligned}
$$
(c)
$$
\begin{aligned}
\mathcal F(f * g)[k, l]
&= \sum_{m=0}^{M-1} \sum_{n=0}^{N-1} (f * g)[m, n] \omega_{N}^{-l n} \omega_{M}^{-k m}\\
&= \sum_{m=0}^{M-1} \sum_{n=0}^{N-1} \sum_{u=0}^{M-1} \sum_{v=0}^{N-1} f[u, v] g[m-u, n-v]\omega_{N}^{-l n} \omega_{M}^{-k m}\\
&=  \sum_{m=0}^{M-1} \sum_{n=0}^{N-1} \sum_{u=0}^{M-1} \sum_{v=0}^{N-1} 
f[u, v]\omega_{N}^{-l u} \omega_{M}^{-k v} g[m-u, n-v] 
\omega_{N}^{-l (n-u)} \omega_{M}^{-k(m-v)}\\
&=\left(\sum_{u=0}^{M-1} \sum_{v=0}^{N-1} 
f[u, v]\omega_{N}^{-l u} \omega_{M}^{-k v}\right)
\left( \sum_{m=0}^{M-1} \sum_{n=0}^{N-1}
g[m-u, n-v] 
\omega_{N}^{-l (n-u)} \omega_{M}^{-k(m-v)}\right)\\
&= \mathcal F f[k, l]\times \mathcal F g[k, l]
\end{aligned}
$$



#### Problem 6

```matlab
%(a)
data = imread("dog.jpg");
Max = 255;
data = im2double(data);
imshow(data);

%(b)
data_new = treat(data);
figure(1)
imshow(data_new);

%(c)
i = 2;
F = 0.5: -0.05: 0.1;
[Xmax ,Ymax] = size(data);
for f = 0.5: -0.05: 0.1
    h = LP_filter(Xmax, Ymax, f);
    data1 = real(ifft2(fft2(data) .* h));
    data_new = treat(data1);
    figure(i);
    suptitle(sprintf('Initial Image with Object Boundaries (f=%g)', f));
    imshowpair(data1, data_new, 'montage');
    i = i + 1;
end
```

函数treat：

```matlab
function data_new = treat(data)

Max = 255;
Bx = [0, 0, 0; 1, -1, 0; 0, 0, 0];
By = [0, 1, 0; 0, -1, 0; 0, 0, 0];
datax = Max * conv2(data, Bx, 'same');
datay = Max * conv2(data, By, 'same');
data_new = data;
data_new(abs(datax) > 10) = 1;
data_new(abs(datay) > 10) = 1;
```

