fprintf('92000103073-Raj Chhadia');
I = imread('peppers.png');

R = I(:,:,1);
G = I(:,:,2);
B = I(:,:,3);

subplot(2,2,1);
imshow(I);
title('original image');

subplot(2,2,2);
imshow(R);
title('Red');

subplot(2,2,3);
imshow(G);
title('Green');

subplot(2,2,4);
imshow(B);
title('Blue');

RR=I;
GG=I;
BB=I;

RR(:,:,2)=0;
RR(:,:,3)=0;

GG(:,:,1)=0;
GG(:,:,3)=0;

BB(:,:,1)=0;
BB(:,:,2)=0;

figure
subplot(2,2,1);
imshow(I);
title('original image');

subplot(2,2,2);
imshow(RR);
title('Red');

subplot(2,2,3);
imshow(GG);
title('Green');

subplot(2,2,4);
imshow(BB);
title('Blue');