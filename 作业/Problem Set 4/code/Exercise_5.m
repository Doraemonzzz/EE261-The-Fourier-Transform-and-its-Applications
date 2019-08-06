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