r=imread('cameraman.tif');

subplot(2,3,1);
    imshow (r);
    title('original image');

subplot(2,3,2);
    noisy_image2 = imnoise(r,'salt & pepper',0.02); 
    imshow(noisy_image2);
    title('noisy (salt & pepper)');
    
subplot(2,3,3);
    img = 1/5 * [0,1,0 ; 1,1,1 ; 0,1,0];
    output1 = uint8(filter2(img,noisy_image2));
    imshow (output1);
    title('output image 1');
    
subplot(2,3,4);
    imshow (r);
    title('original image');

subplot(2,3,5);
    noisy_image2 = imnoise(r,'gaussian',0.02); 
    imshow(noisy_image2);
    title('noisy (gaussian)');
    
subplot(2,3,6);
    output2 = uint8(filter2(img,noisy_image2));
    imshow (output2);
    title('output image 2');
    fprintf('92000103073 Raj Chhadia');