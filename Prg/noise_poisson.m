subplot(1,2,1);
    I = imread('cameraman.tif');
    imshow(I);
    title('Original Image');
subplot(1,2,2);
    J = imnoise(I,'poisson');
    imshow(J);
    title('Poisson noise');
    fprintf('92000103073 Raj Chhadia');
