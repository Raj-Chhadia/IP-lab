r=imread('cameraman.tif');

subplot(1,2,1);
    imshow (r);
    title('original image');

subplot(1,2,2);
    imhist(r);
    title('histogram image');
    fprintf('92000103073 Raj Chhadia');