% C B D A
% | | | |
% A B C D
[y, Fs] = audioread("PS-4-scramble.wav");
%�任ΪƵ��
z = fft(y);
plot(abs(z))
%plot(imag(z))
%������ע���жԳ���
n = floor(length(y) / 8);
C = z(1: n);
B = z(n + 1: 2 * n);
D = z(2 * n + 1: 3 * n);
A = z(3 * n + 1: 4 * n);
res = [A; B; C; D; flipud([conj(A);conj(B);conj(C);conj(D)])];
%ȡʵ��
r = real(ifft(res));
audiowrite('res.wav', r, Fs);