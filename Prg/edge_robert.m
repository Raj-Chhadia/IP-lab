fprintf('92000103073 Raj Chhadia');
subplot(2,3,1);
    input_image = imread('office_4.jpg');
    imshow(input_image);
    title('Original Image');
    input_image = uint8(input_image);
    
subplot(2,3,2);
    % conversion of colorful image to grayscale
    input_image = rgb2gray(input_image);
    imshow(input_image);
    title('Grayscale Image');
    % Convert the image to double
    input_image = double(input_image);
    % defining filter 
    filtered_image = zeros(size(input_image));
    
subplot(2,3,3);
    % defining robert operator
    Mx = [1 0 ; 0 -1];
    My = [0 1 ; -1 0];
    % edge detection
    for i = 1 : size(input_image,1)-1
        for j = 1 : size(input_image,2)-1
          % Gradient approximations
          Gx = sum(sum(Mx.*input_image(i:i+1, j:j+1)));
          Gy = sum(sum(My.*input_image(i:i+1, j:j+1))); 
          % Calculate magnitude of vector
          filtered_image(i, j) = sqrt(Gx.^2 + Gy.^2);
        end
    end
   % Displaying Filtered Image
    filtered_image = uint8(filtered_image);
    imshow(filtered_image); 
    title('Filtered Image');
    
subplot(2,3,4)
    % Define a threshold value
    thresholdValue = 100; % varies between [0 255]
    output_image = max(filtered_image, thresholdValue);
    output_image(output_image == round(thresholdValue)) = 0;
    % Displaying Output Image
    output_image = im2bw(output_image);
    imshow(output_image);
    title('Edge Detected Image at 100');

subplot(2,3,5)
    % Define a threshold value
    thresholdValue = 150; % varies between [0 255]
    output_image = max(filtered_image, thresholdValue);
    output_image(output_image == round(thresholdValue)) = 0;
    % Displaying Output Image
    output_image = im2bw(output_image);
    imshow(output_image);
    title('Edge Detected Image at 150');  
    
subplot(2,3,6)
    % Define a threshold value
    thresholdValue = 50; % varies between [0 255]
    output_image = max(filtered_image, thresholdValue);
    output_image(output_image == round(thresholdValue)) = 0;
    % Displaying Output Image
    output_image = im2bw(output_image);
    imshow(output_image);
    title('Edge Detected Image at 50');  