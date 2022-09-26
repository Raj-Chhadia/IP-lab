%Nd(P)
I =imread('cameraman.tif');
X = imnoise(I,'salt & pepper');
f=1/9*[0,1,0;1,1,1;0,1,0];

Z=filter2(f,X);
    subplot(1,3,1);
    imshow(I);
    title('Original Image');

subplot(1,3,2);
    imshow(X);
    title('Noisy Image');

subplot(1,3,3);
    imshow(uint8(Z));
    title('Denoised Image');
    fprintf('92000103073 Raj Chhadia');