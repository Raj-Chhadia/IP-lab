% imread
% who
% whos
% imwrite
% imfinfo
% imshow
% imagesc
% subplot
% imresize
% imcrop
% im2bw
% rgb2gray
% impixel
% imadd
% imsubtract
% imdivide
% immultiply
% imcomplement


subplot(3,2,1);
A = imread('cameraman.tif');
imshow(A)
title('Cameraman');


subplot(3,2,2);
B = imread('rice.png');
% imshow(B)
pixel = impixel(B,100,400);
imshow(pixel)
title('rice');

subplot(3,2,3);
C = imread('football.jpg');
imshow(C)
bw = rgb2gray(C);
imshow(bw)
title('rgb2gray');

subplot(3,2,4);
D = imread('football.jpg');
imshow(D)
title('football');

subplot(3,2,5);
E = imread('peppers.png');
imshow(E)
imagesc(E)
title('peppers');

subplot(3,2,6);
F = imread('peppers.png');
I = imcrop(F,[150 150 100 100]);
imshow(I)
imagesc(I)
title('peppers');