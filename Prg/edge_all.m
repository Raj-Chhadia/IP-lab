fprintf('92000103073 Raj Chhadia');
% Displaying Input Image
subplot(2,4,1);
    input_image = imread('peppers.png');
    imshow(input_image);
    title('lnput Image');
    
% Convert the RGB image to the grayscale image
subplot(2,4,2);
    input_image = rgb2gray(input_image);
    imshow(input_image);
    title('lnput Grayscale Image');
    
%Apply prewitt Operator
subplot(2,4,3);
    filtered_imagel = edge(input_image, 'prewitt');
    imshow(filtered_imagel);
    title('Prewitt Edge Detected Image');
    
%Apply Sobel Operator
subplot(2,4,4);
    filtered_image2 = edge(input_image, 'sobel');
    imshow(filtered_image2);
    title('Sobel Edge Detected Image');
    
%Apply Roberts Operator
subplot(2,4,5);
    filtered_image3 = edge(input_image, 'roberts');
    imshow(filtered_image3);
    title('Roberts Edge Detected Image');
    
%Apply 'Laplacian of Gaussian Operator
subplot(2,4,6);
    filtered_image4 = edge(input_image, 'log');
    imshow(filtered_image4);
    title('Laplacian of Gaussian Edge Detected Image');
    
%Apply canny edge Detection algorithm
subplot(2,4,7);
    filtered_image4 = edge(input_image, 'canny');
    imshow(filtered_image4);
    title('Canny Edge Detected Image');