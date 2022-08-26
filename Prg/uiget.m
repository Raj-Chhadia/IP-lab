[file,path]=uigetfile('*.jpg');
r=imread(path);
s=r;

subplot(1,3,1);
    imshow (r);
    title('original image');

subplot(1,3,2);
    for row = 1 : size(r,1)
        for col = 1 : size(r,2)
            s(row,col) = 255 - r(row,col);
        end
    end
    imshow (s);
    title('negative image');

subplot(1,3,3);
    q=imcomplement(r);
    imshow(q);
    title('using imcomplement()');
fprintf('92000103073 Raj Chhadia');