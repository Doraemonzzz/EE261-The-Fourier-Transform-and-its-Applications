#### Problem 1

(a)
$$
\begin{aligned}
\underline{\mathcal{F}}\left(\tau_{p} \mathrm{f}\right)[m]
&= \sum_{k=0}^{N-1} \tau_{p} \mathrm{f}[k] w^{-k m}\\
&= \sum_{k=0}^{N-1} \mathrm{f}[k-p]w^{-k m}\\
&=w^{-pm} \sum_{k=0}^{N-1} \mathrm{f}[k-p]w^{-(k-p) m}\\
&= w^{-pm} \underline{\mathcal{F}} \mathrm{f}[m]\\
&= (\underline{\omega}^{-p} \underline{\mathcal{F}} \mathrm{f})[m]
\end{aligned}
$$
所以
$$
\underline{\mathcal{F}}\left(\tau_{p} \mathrm{f}\right)={\omega}^{-p} \underline{\mathcal{F}} \mathrm{f}
$$
(b)
$$
\begin{aligned}
\underline{\mathcal{F}} \underline g[m]
&=  \sum_{k=0}^{2N-1} \underline{g}[k]
e^{-2 \pi i m k / 2 N}\\
&= \sum_{k=0}^{N-1} \underline{g}[k]
e^{-2 \pi i m k / 2 N} +\sum_{k=N}^{2N-1} \underline{g}[k]
e^{-2 \pi i m k / 2 N}\\
&= \sum_{k=0}^{N-1} \underline{f}[k]
e^{-2 \pi i m k / 2 N} + \sum_{k=N}^{2N-1} \underline{f}[k-N]
e^{-2 \pi i m k / 2 N} \\
&=\sum_{k=0}^{N-1} \underline{f}[k]
e^{-2 \pi i m k / 2 N} +e^{-\pi im}\sum_{k=N}^{2N-1} \underline{f}[k-N]
e^{-2 \pi i m (k-N) / 2 N} \\
&=\sum_{k=0}^{N-1} \underline{f}[k]
e^{-2 \pi i m k / 2 N} +e^{-\pi im}\sum_{k=0}^{N-1} \underline{f}[k]
e^{-2 \pi i m k / 2 N}
\end{aligned}
$$
如果$m=2l$，那么
$$
\begin{aligned}
\underline{\mathcal{F}} \underline g[m]
&=\underline{\mathcal{F}} \underline g[2l]\\
&=\sum_{k=0}^{N-1} \underline{f}[k]
e^{-2 \pi i 2l k / 2 N} +\sum_{k=0}^{N-1} \underline{f}[k]
e^{-2 \pi i 2l k / 2 N}\\
&= 2\underline{\mathcal{F}} \underline f[l]
\end{aligned}
$$
如果$m= 2l+1$，那么
$$
\begin{aligned}
\underline{\mathcal{F}} \underline g[m]
&=\underline{\mathcal{F}} \underline g[2l +1]\\
&=\sum_{k=0}^{N-1} \underline{f}[k]
e^{-2 \pi i m k / 2 N} +e^{-\pi i(2l+1)}\sum_{k=0}^{N-1} \underline{f}[k]
e^{-2 \pi i m k / 2 N}\\
&=0
\end{aligned}
$$
(c)记
$$
w_k =e^{2\pi i/k}, \omega_k= (1, w_k,\ldots, w_k^{k-1})
$$
那么
$$
\begin{aligned}
\underline{X}
&=\mathcal{F} {\underline{x}}\\
&= \sum_{k=0}^{N-1}\underline{\mathrm{x}}[k]
\omega^{-k}_N\\
\tilde{\underline{X}}
&=\mathcal{F}{\tilde{{\underline{x}}}}\\
&= \sum_{k=0}^{N+M-1}\underline{\mathrm{x}}[k]
\omega^{-k}_{N+M}\\
&=\sum_{k=0}^{N-1}\underline{\mathrm{x}}[k]
\omega^{-k}_{N+M}\\
\end{aligned}
$$
考虑第$m$个分量，其中$0\le m\le N-1$：
$$
\begin{aligned}
\underline{X}[m]

&= \sum_{k=0}^{N-1}\underline{\mathrm{x}}[k]
\omega^{-k}_N[m]\\
&= \sum_{k=0}^{N-1}\underline{\mathrm{x}}[k]
w_N^{-km} \\

\tilde{\underline{X}}[m]
&=\sum_{k=0}^{N-1}\underline{\mathrm{x}}[k]
\omega^{-k}_{N+M}[m]\\
&=\sum_{k=0}^{N-1}\underline{\mathrm{x}}[k]
w^{-km}_{N+M}\\
&=\sum_{k=0}^{N-1}\underline{\mathrm{x}}[k]
e^{-2\pi i(km)/ (N+M)} \\
&=\sum_{k=0}^{N-1}\underline{\mathrm{x}}[k]
e^{-2\pi i(kmN/(N+M))/N} \\
&=\underline{X}[mN/(N+M)]
\end{aligned}
$$
使用zero-pad是为了将信号数量扩充成$2$的幂，方便使用FFT算法。



#### Problem 2

$$
\begin{aligned}
(\underline{1} * \underline{\mathrm{f}})[m]
&=\sum_{k=0}^{N-1} 1[k]\mathrm f[m-k]\\
&=\sum_{k=0}^{N-1} \mathrm f[m-k] \\
&=\sum_{k=0}^{N-1}  \mathrm f[k] 
\end{aligned}
$$

所以
$$
\underline{1} * \underline{\mathrm{f}} =
\left(\sum_{k=0}^{N-1}  \mathrm f[k] \right)
\underline 1
$$
特别的，我们有
$$
\begin{aligned}
\underline{1} * \underline{1} &=
N\underline 1 \\
\underline{1} * \underline{a} &=
N \underline a
\end{aligned}
$$



#### Problem 3

(a)
$$
\begin{aligned}
\underline{\mathcal{F}} \underline {\mathrm h}[n]
&=\sum_{k=0}^{2N-1} \underline{\mathrm{h}}[k] 
e^{-2 \pi i n k / 2 N}\\
&= \sum_{l=0}^{N-1} \underline{\mathrm{h}}[2l] 
e^{-2 \pi i n 2l / 2 N}\\
&=\sum_{l=0}^{N-1} \underline{\mathrm{f}}[l] 
e^{-2 \pi i nl /  N}\\
&=\underline{\mathcal{F}} \underline {\mathrm f}[n]
\end{aligned}
$$
(b)
$$
\begin{aligned}
(\underline{\mathcal{F}} \underline {\mathrm g})[n]
&=\sum_{k=0}^{N/2-1} \underline{\mathrm{g}}[k] 
e^{-2 \pi i n k /  (N/2)}\\
&= \sum_{k=0}^{N/2-1} \underline{\mathrm{f}}[2k] 
e^{-2 \pi i n (2k) /  N}
\end{aligned}
$$
注意到
$$
\begin{aligned}
F[n] 
&=\sum_{k=0}^{N-1} \underline{\mathrm{f}}[k] 
e^{-2 \pi i nk /  N} \\
&= \sum_{k=0}^{N/2-1} \underline{\mathrm{f}}[2k] 
e^{-2 \pi i n (2k) /  N} +  \sum_{k=0}^{N/2-1} \underline{\mathrm{f}}[2k +1] 
e^{-2 \pi i n (2k +1) /  N}
\end{aligned}
$$
那么
$$
\begin{aligned}
F[n -\frac N  2 ] 
&=\sum_{k=0}^{N-1} \underline{\mathrm{f}}[k] 
e^{-2 \pi i nk /  N} \\
&= \sum_{k=0}^{N/2-1} \underline{\mathrm{f}}[2k] 
e^{-2 \pi i (n -\frac N  2 ) (2k) /  N} +  \sum_{k=0}^{N/2-1} \underline{\mathrm{f}}[2k +1] 
e^{-2 \pi i (n -\frac N  2 ) (2k +1) /  N}\\
&=\sum_{k=0}^{N/2-1} \underline{\mathrm{f}}[2k] 
e^{-2 \pi i n (2k) /  N} -  \sum_{k=0}^{N/2-1} \underline{\mathrm{f}}[2k +1] 
e^{-2 \pi i n (2k +1) /  N}
\end{aligned}
$$
从而
$$
\begin{aligned}
(\underline{\mathcal{F}} \underline {\mathrm g})[n]
&= \sum_{k=0}^{N/2-1} \underline{\mathrm{f}}[2k] 
e^{-2 \pi i n (2k) /  N}\\
&= \frac 1 2 \left(F[n]  + F[n-\frac N  2 ] \right )
\end{aligned}
$$



#### Problem 4

该文件无法读取，略过。