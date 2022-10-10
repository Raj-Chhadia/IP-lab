fprintf('92000103073-Raj Chhadia');
I = imread('peppers.png');
hsv = rgb2hsv(I);
h = hsv(:,:,1);
s = hsv(:,:,2);
v = hsv(:,:,3);
figure
subplot(2,2,1);
imshow(I);
title('original image');

subplot(2,2,2);
imshow(h);
title('Hue');

subplot(2,2,3);
imshow(s);
title('Saturation');

subplot(2,2,4);
imshow(v);
title('Intensity');