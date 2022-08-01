x=imread('cameraman.tif');

subplot(1,2,1);
    imshow (x);
    title('original image');
    
subplot(1,2,2);
    g=im2bw(x);
    imshow (g);
    title('using im2bw');
    fprintf('92000103073 Raj Chhadia');
    