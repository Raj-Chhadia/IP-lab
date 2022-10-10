fprintf('92000103073-Raj Chhadia');
I = imread('peppers.png');
RR=I;
GG=I;
BB=I;

RR(:,:,3)=0; % B=0 yellow
GG(:,:,1)=0; % R=0 cyan 
BB(:,:,2)=0; % G=0 magenta

figure
subplot(2,2,1);
imshow(I);
title('original image');

subplot(2,2,2);
imshow(RR);
title('Yellow');

subplot(2,2,3);
imshow(GG);
title('Cyan');

subplot(2,2,4);
imshow(BB);
title('Magenta');