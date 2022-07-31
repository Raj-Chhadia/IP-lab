[file,path] = uigetfile('*.jpg');
r = imread([path file]);
s=r;

subplot(2,1,1);

for row = 1 : size(r,1)
    for col = 1 : size(r,2)
        s(row,col) = 255 - r(row,col);
    end
end
figure
imshow (r);
title('original image');

subplot(2,1,2);
imshow (s);
title('negative image');