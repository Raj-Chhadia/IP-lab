fprintf('92000103073 Raj Chhadia');
I =imread('cameraman.tif');
        NI = imnoise(I,'gaussian');
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
imshow(c2);
title('Min Filter');