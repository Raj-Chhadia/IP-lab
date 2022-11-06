fprintf('92000103073-Raj Chhadia');
subplot(2, 2, 1);
    I = imread('kids.tif');
    imshow(I);
    title ('original image');
subplot(2, 2, 2);
    %mask = adapthisteq(I);
    mask=histeq(I);
    imshow(mask);
    title ('Histogram Equalization');
subplot(2, 2, 3);
    se = strel('disk',5);
    marker = imerode(mask,se);
    imshow(marker);
    title ('Erosion');
subplot(2, 2, 4);
    obr = imreconstruct(marker,mask);
    imshow(obr,[])
    title ('Reconstruction of Image');