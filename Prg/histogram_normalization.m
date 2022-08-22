r=imread('cameraman.tif');

subplot(5,2,1);
    imshow (r);
    title('original image');

subplot(5,2,2);
    imhist(r);
    title('histogram image');
    
subplot(5,2,3);
    p=r;
    total=numel(r);
    for i=1:size(r,1)
        for j=1:size(r,2)
            p(i,j)=r(i,j)/total;
        end
    end
    imshow(p);
    title('normalization image');

subplot(5,2,4);
    p=imhist(r)/numel(r);
    imhist (p);
    title('normalization histogram');

subplot(5,2,5);
    j=histeq(r);
    imshow (j);
    title('equilization image');

subplot(5,2,6);
    j=histeq(r);
    imhist (j);
    title('equilization histogram');
    
subplot(5,2,7);
    q=r;
    for i=1:size(r,1)
        for j=1:size(r,2)
            q(i,j)=r(i,j)-50;
        end
    end
    imshow(q);
    title('left slide');

subplot(5,2,8);
    imhist(q);
    title('left slide histogram');
    
subplot(5,2,9);
     s=r;
    for i=1:size(r,1)
        for j=1:size(r,2)
            s(i,j)=r(i,j)+50;
        end
    end
    imshow(s);
    title('right slide');

subplot(5,2,10);
    imhist(s);
    title('right slide histogram');
    fprintf('92000103073 Raj Chhadia');