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
f1= 3*3./imfilter(1./(NI1+eps),f,'replicate');
imshow(f1);
title('Harmonic Mean SAP Filter');


subplot(2,3,4);
imshow(I);
title('Original Image');

subplot(2,3,5);
imshow(NL);
title('Noisy Image');

subplot(2,3,6);
f2=  3*3./imfilter(1./(NL1+eps),f,'replicate');
imshow(f2);
title('Harmonic Mean Gaussian Filter');