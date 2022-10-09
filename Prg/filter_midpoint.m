fprintf('92000103073 Raj Chhadia');
I =imread('cameraman.tif');
        NI = imnoise(I,'salt & pepper');
        %NI1 = im2double(NI);
      f=[1,1,1;1,1,1;1,1,1];
        
subplot(1,3,1);
imshow(I);
title('Original Image');

subplot(1,3,2);
imshow(NI);
title('Noisy Image');

subplot(1,3,3);
c2=ordfilt2(NI,1,f);
c3=ordfilt2(NI,9,f);
G=imlincomb(0.5,c2,0.5,c3);
imshow(c2);
title('Midpoint Filter');