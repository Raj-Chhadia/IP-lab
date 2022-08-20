x=imread('cameraman.tif');

subplot(1,3,1);
    imshow (x);
    title('original image');
    
subplot(1,3,2);
    g=log(1 + double(x));
    imshow (g);
    title('intermediate');
    
subplot(1,3,3);
    gs=im2uint8(mat2gray(g));
    imshow (gs);
    title('log transformation');
    fprintf('92000103073 Raj Chhadia');