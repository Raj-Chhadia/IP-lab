fprintf('92000103073 Raj Chhadia');
I =imread('circuit.tif');
NI = imnoise(I,'gaussian');
NI1 = im2double(NI);
f=[1,1,1;1,1,1;1,1,1];

subplot(3,3,1);
imshow(I);
title('Original Image');

subplot(3,3,2);
imshow(NI);
title('Noisy Image');

subplot(3,3,3);
c2=imfilter(NI1.^(1+1),f,'replicate');
c3= f2./(imfilter(NI1.^1,f,'replicate')+eps);
imshow(c3);
title('ContraHarmonic Mean Q=1');


subplot(3,3,4);
imshow(I);
title('Original Image');

subplot(3,3,5);
imshow(NI);
title('Noisy Image');

subplot(3,3,6);
f2=imfilter(NI1.^(0+1),f,'replicate');
f3= f2./(imfilter(NI1.^0,f,'replicate')+eps);
imshow(f3);
title('ContraHarmonic Mean Q=0');

subplot(3,3,7);
imshow(I);
title('Original Image');

subplot(3,3,8);
imshow(NI);
title('Noisy Image');

subplot(3,3,9);
b2=imfilter(NI1.^(-1+1),f,'replicate');
b3= f2./(imfilter(NI1.^-1,f,'replicate')+eps);
imshow(b3);
title('ContraHarmonic Mean Q=-1');