fprintf('92000103073-Raj Chhadia');
% Importing the image
I = imread('cameraman.tif');
subplot(2, 3, 1);
    imshow(I);
    title('Original image');
% Dilated Image
subplot(2, 3, 2);
    se = strel('square', 7);
    dilate = imdilate(I, se);
    imshow(dilate);
    title('Dilated image');
% Eroded image
subplot(2, 3, 3);
    erode = imerode(I, se);
    imshow(erode);
    title('Eroded image');
% Opened image
subplot(2, 3, 4);
    open = imopen(I, se);
    imshow(open);
    title('Opened image');
% Closed image
subplot(2, 3, 5);
    close = imclose(I, se);
    imshow(close);
    title('Closed image');