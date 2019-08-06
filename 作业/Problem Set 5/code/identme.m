% ee261 system identification problem
%
% usage: output = identme(input,resolution)
%
% input:      input signal
% resolution: timing resolution of the input signal
% output:     output signal
% 
% Example:  resolution = 0.001; 
%           t = 0:resolution:10;
%           nu = 2;
%           input = cos(2*pi*nu*t);
%           output = identme(input,resolution);
%

function output = identme(input,res)

N = length(input);
s = (-floor(N/2):floor((N-1)/2))/res/N;
H = transferfcn(s);
H = ifftshift(H);
Fout = H.*fft(input);
output = real(ifft(Fout));

return
