%(b)
Nu = 0 : 20;
res = zeros(1, 21);

for nu = 1 : 21
    resolution = 0.001; 
    t = 0:resolution:10;
    input = cos(2*pi*nu*t);
    output = identme(input, resolution);
    res(nu) = max(output);
end
figure(1);
plot(Nu, res);

%(c)
s = 0: 0.01: 20;
H = transferfcn(s);
figure(2)
plot(s, H);