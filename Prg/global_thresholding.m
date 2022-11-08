subplot(2,2,1);
    A=imread('cameraman.tif');
    imshow(A);
    title('Original Image');
    
subplot(2,2,2);
    imhist(A);
    title('Histogram of Image');
    
subplot(2,2,3);
    output1=zeros(size(A));
    for i=1:size(A,1)
        for j=1:size(A,2)
            if A(i,j)>=70
                output1(i,j)=1;
            else
                output1(i,j)=0;
            end
        end
    end
    imshow(output1);
    title('Global Thresholding, Thresold=70');
    
subplot(2,2,4);
    output1=zeros(size(A));
    for i=1:size(A,1)
        for j=1:size(A,2)
            if A(i,j)>=150
                output1(i,j)=1;
            else
                output1(i,j)=0;
            end
        end
    end
    imshow(output1);
    title('Global Thresholding, Thresold=150');
    fprintf('92000103073 Raj Chhadia');