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