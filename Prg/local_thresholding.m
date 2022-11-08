subplot(2,2,1);
    A=imread('cameraman.tif');
    imshow(A);
    title('Original Image');
    
subplot(2,2,2);
    imhist(A);
    title('Histogram of Image');
    
subplot(2,2,3);
    output1=A;
    for i=1:size(A,1)
        for j=1:size(A,2)
            if A(i,j)>=120
                output1(i,j)=255;
            elseif A(i,j)>=70
                output1(i,j)=128;
            else
                output1(i,j)=0;
            end
        end
    end
    imshow(output1);
    title('Local Thresholding, Threshold = 70, 120');
    
subplot(2,2,4);
    output1=A;
    for i=1:size(A,1)
        for j=1:size(A,2)
            if A(i,j)>=200
                output1(i,j)=255;
            elseif A(i,j)>=150
                output1(i,j)=170;
            elseif A(i,j)>=100
                output1(i,j)=100;
            else
                output1(i,j)=0;
            end
        end
    end
    imshow(output1);
    title('Local Thresholding, Thresold=50,100,150,200');
    fprintf('92000103073 Raj Chhadia');