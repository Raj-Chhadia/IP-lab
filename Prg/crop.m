F = imread('peppers.png');
I = imcrop(F,[150 150 100 100]);
imshow(I)
imagesc(I)
title('peppers');