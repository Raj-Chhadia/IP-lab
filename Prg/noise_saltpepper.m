subplot(1,2,1);
    I = imread('cameraman.tif');
    imshow(I);
    title('Original Image');
subplot(1,2,2);
    J = imnoise(I,'salt & pepper');
    imshow(J);
    title('Salt & Pepper noise');
    fprintf('92000103073 Raj Chhadia');
