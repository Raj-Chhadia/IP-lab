fprintf('92000103073-Raj Chhadia');
I = imread('cameraman.tif');
imshow(I);
title('Original Image');

thresh = multithresh(I,5);
seg_I = imquantize(I,thresh);

RGB = label2rgb(seg_I);
figure;
imshow(RGB)
title('RGB Segmented Image with 5 Plan');

thresh = multithresh(I,2);
seg_I = imquantize(I,thresh);

RGB = label2rgb(seg_I);
figure;
imshow(RGB)
title('RGB Segmented Image with 2 Plan');