fprintf('92000103073 Raj Chhadia');
I =imread('cameraman.tif');
X =imnoise(I,'gaussian');
f =1/16*[1,2,1;2,4,2;1,2,1];
Z =filter2(f,X);
figure;
subplot(1,3,1);
imshow(I);
title('Original image');

subplot(1,3,2);
imshow(X);
title('Noisy image');

subplot(1,3,3);
imshow(uint8(Z));
title('Denoised image');