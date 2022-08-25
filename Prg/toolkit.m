% 92000103073 - Raj Chhadia
I = imread('rice.png');
J = imresize(I, 0.5);
figure, imshow(I), figure, imshow(J)