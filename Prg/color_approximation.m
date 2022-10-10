fprintf('92000103073-Raj Chhadia');
clc;
clear;

RGB = imread('peppers.png');
imshow(RGB);
title('Original image with RGB color');

%convert RGB to an indexed image with 10 colors
[IND, map] = rgb2ind(RGB,10);
figure,
image(IND);
colormap(map);
title('Index Image with 10 color');

[Y,newmap] = imapprox(IND,map,3);
figure,
image(Y);
colormap(newmap);
title('indexed image with 3 color');