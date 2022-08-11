x=imread('kids.tif');

subplot(2,3,1);
    imshow (x);
    title('original image');
    
subplot(2,3,2);
    s=1./(50./(double(x)+eps ).^20);
    imshow (s);
    title('CONTRAST-50');
    
   subplot(2,3,3);
    s=1./(100./(double(x)+eps ).^20);
    imshow (s);
    title('CONTRAST-100');
    
    subplot(2,3,4);
    s=1./(150./(double(x)+eps ).^20);
    imshow (s);
    title('CONTRAST-150');
    fprintf('92000103073 Raj Chhadia');
    