r=imread('cameraman.tif');
s=imread('rice.png');

subplot(3,2,1);
    imshow (r);
    title('original image');

subplot(3,2,2);
    imhist(r);
    title('input histogram');
    
subplot(3,2,3);
    imshow (s);
    title('refrence image');
    
subplot(3,2,4);
    imhist(s);
    title('refrence histogram');
    
subplot(3,2,5);
    t = imhistmatch(r,s);
    imshow(t);
    title('matching image');
    
subplot(3,2,6);
    imhist(t);
    title('matching histogram');
    fprintf('92000103073 Raj Chhadia'); 