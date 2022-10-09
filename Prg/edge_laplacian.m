fprintf('92000103073 Raj Chhadia');
subplot(2,3,1);
    % Edge detection using Laplacian Filter.
    k=imread('peppers.png');
    imshow(k); title('lnput Image');
    
subplot(2,3,2);
    % Convert rgb image to grayscale.
    kl=rgb2gray(k);
    imshow(kl); title('lnput Grayscale Image');
    
subplot(2,3,3);
    % Display the noisy image.
    NI =imnoise(kl, 'gaussian');
    imshow(NI); title('Noisy Image');
    
subplot(2,3,4)
   % Create the gaussian Filter.
    GI=fspecial('gaussian', 5, 1);
    % Define the Laplacian Filter.
    Lap=[0 -1 0; -1 4 -1; 0 -1 0];
    % Convolve the noisy image
    % with Gaussian Filter first.
    Output1=conv2(NI, GI, 'same');
    % Display the Gaussian of noisy _ image.
    imshow(uint8(Output1)); title('Apply Gaussian Filter');

subplot(2,3,5)
    % Convolve the resultant
    % image with Laplacian filter.
    Output2=conv2(Output1, Lap, 'same');
    % Display the Laplacian of Gaussian resultant image.
    imshow(Output2); title('Apply Laplacian Operator');