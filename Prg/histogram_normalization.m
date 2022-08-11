r=imread('cameraman.tif');

subplot(3,2,1);
    imshow (r);
    title('original image');

subplot(3,2,2);
    imhist(r);
    title('histogram image');
    
subplot(3,2,3);
    p=r;
    total=numel(r);
    for i=1:size(r,1)
        for j=1:size(r,2)
            p(i,j)=r(i,j)/total;
        end
    end
    imshow(p);
    title('normalization image');

subplot(3,2,4);
    p=imhist(r)/numel(r);
    imhist (p);
    title('normalization histogram');

subplot(3,2,5);
    j=histeq(r);
    imshow (j);
    title('equilization image');

subplot(3,2,6);
    j=histeq(r);
    imhist (j);
    title('equilization histogram');
    fprintf('92000103073 Raj Chhadia');