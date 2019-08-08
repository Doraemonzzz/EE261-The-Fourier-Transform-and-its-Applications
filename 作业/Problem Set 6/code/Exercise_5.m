% (a)
d1 = imread("man.gif");
%转换类型
%data = im2double(data);
d2 = d1(:);
d3 = double(d2);
d4 = d3 / max(d3);
n = length(d4);

% (b)
x = fft(d4);
l = length(x);
% 中心化
x_center = [x(l/2 + 1: end); x(1: l/2)];
plot([-l/2: l / 2 - 1], abs(x_center))

% (c)
E_total = norm(x_center) ^ 2;
E_partial = zeros(1, l / 2);
E_partial(1) = abs(x(1)) ^ 2;
for i = 2: (l / 2 - 1)
    E_partial(i) = E_partial(i - 1) + 2 * abs(x(i)) ^ 2;
end
%比例
ratio = E_partial / E_total;

Alpha = [0.9, 0.95, 0.99];
%Type = ['nearest', 'linear'];
cnt = 1;
for i = 1: 2
    for j = 1: 3
        %type = Type(i);
        if i == 1
            type = 'nearest';
        else
            type = 'linear';
        end
        alpha = Alpha(j);
        %计算p
        p = double(find_p(ratio, alpha));
        %采样频率
        rate = floor(n / (2 * p));
        %索引
        index = 1: rate: n;
        %对应的值
        x_res = d4(index);
        %插值
        res = interp1(index, x_res, 1: n, type);
        %恢复图像
        res = max(d3) * res;
        res = reshape(res, 256, 256);
        %作图
        figure(cnt);
        imagesc(res); 
        colormap('gray');
        title(['\alpha =' num2str(alpha) ', ', type]);
        cnt = cnt + 1;
    end
end
