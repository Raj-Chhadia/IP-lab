x=imread('pepper.jpg');

subplot(1,2,1);
    imshow (x);
    title('original image');
    
subplot(1,2,2);
    y =x*0;
    for row = 1:size(x,1)
        for col=1:size(x,2)
            b = bitget(x(row,col),8);
            y(row,col)=bitset(y(row,col),8,b);
        end
    end
    imshow (y);
    title('bit plane slicing');
    fprintf('92000103073 Raj Chhadia');
    