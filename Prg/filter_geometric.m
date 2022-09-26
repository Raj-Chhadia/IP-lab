fprintf('92000103073 Raj Chhadia');
I =imread('circuit.tif');
NI = imnoise(I,'salt & pepper');
NI1 = im2double(NI);
NL = imnoise(I,'gaussian');
NL1 = im2double(NL);
f=[1,1,1;1,1,1;1,1,1];

subplot(2,3,1);
imshow(I);
title('Original Image');

subplot(2,3,2);
imshow(NI);
title('Noisy Image');

subplot(2,3,3);
f1= exp(imfilter(log(NI1),f,'replicate')).^(1/9);
imshow(f1);
title('Geometric Mean SAP Filter');


subplot(2,3,4);
imshow(I);
title('Original Image');

subplot(2,3,5);
imshow(NL);
title('Noisy Image');

subplot(2,3,6);
f2= exp(imfilter(log(NL1),f,'replicate')).^(1/9);
imshow(f2);
title('Geometric Mean Gaussian Filter');