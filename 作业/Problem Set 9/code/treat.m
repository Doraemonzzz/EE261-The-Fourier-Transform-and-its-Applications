function data_new = treat(data)

Max = 255;
Bx = [0, 0, 0; 1, -1, 0; 0, 0, 0];
By = [0, 1, 0; 0, -1, 0; 0, 0, 0];
datax = Max * conv2(data, Bx, 'same');
datay = Max * conv2(data, By, 'same');
data_new = data;
data_new(abs(datax) > 10) = 1;
data_new(abs(datay) > 10) = 1;