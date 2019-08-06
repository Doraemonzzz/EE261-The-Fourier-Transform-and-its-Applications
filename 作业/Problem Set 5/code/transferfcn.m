% ee261 system identification problem
% 
% filter transfer function
%
% usage: H = transferfcn(s)
%

function H = transferfcn(s)

sl = 3; sh = 12; N = 10;  
H = (s/sl).^(2*N)./(1+(s/sl).^(2*N))./(1+(s/sh).^(2*N));

return