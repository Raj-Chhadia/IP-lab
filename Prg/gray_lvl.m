r=imread('cameraman.tif');
s=r;
subplot(1,3,1);
    imshow (r);
    title('original image');
subplot(1,3,2);
    for row = 1 : size(r,1)
        for col = 1 : size(r,2)
            if r(row,col) >100 && r(row,col) <200
                s(row,col)=255;
            else
                s(row,col) = 0;
            end
        end
    end
    imshow (s);
    title('Gray level-1');
subplot(1,3,3);
    for row = 1 : size(r,1)
        for col = 1 : size(r,2)
            if r(row,col) >100 && r(row,col) <200
                s(row,col)=255;
            else
                s(row,col) = r(row,col);
            end
        end
    end
    imshow (s);
    title('Gray level-2');
fprintf('92000103073 Raj Chhadia');