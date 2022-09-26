fprintf('Raj 92000103073');
I =imread('cameraman.tif');
subplot(2,3,1);
imshow(I);
title('Original Image');

subplot(2,3,2);
imhist(I);
title('Original Histogram');

subplot(2,3,3);
NI = imnoise(I,'salt & pepper');
imhist(NI);
title('salt and pepper');

subplot(2,3,4);
NL = imnoise(I,'gaussian');
imhist(NL);
title('gaussian');


subplot(2,3,5);
NT = imnoise(I,'poisson');
imhist(NT);
title('poisson');

subplot(2,3,6);
NS = imnoise(I,'speckle');
imhist(NS);
title('speckle');