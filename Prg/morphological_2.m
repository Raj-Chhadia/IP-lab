fprintf('92000103073-Raj Chhadia');
%Read binary image and display it.
subplot(2, 3, 1);
    BW = imread('circles.png');
    imshow(BW);
    title('Original Image')

%Boundary Extraction
subplot(2, 3, 2);
    BW2 = bwmorph(BW,'remove');
    imshow(BW2);
    title('Boundary Extraction');

%Skeletonization
subplot(2, 3, 3);
    % BW3= bwskel(BW);
    BW3= bwmorph(BW,'skel',Inf);
    imshow(BW3)
    title('Skeleton of Image');

%Thickening
subplot(2, 3, 4);
    BW4 = bwmorph(BW,'thicken');
    imshow(BW4)
    title('Thickening');

%Thinning
subplot(2, 3, 5);
    BW4 = bwmorph(BW,'thin');
    imshow(BW4)
    title('Thinning');

%Convex Hull of Image
subplot(2, 3, 6);
    BW5 = bwconvhull(BW);
    imshow(BW5);
    title('Convex Hull');
    disp(CC.Connectivity);
    disp(CC.NumObjects);