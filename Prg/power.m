x=imread('cameraman.tif');

subplot(2,3,1);
    imshow (x);
    title('original image');
    
subplot(2,3,2);
    g=imadjust(x,[0 1],[1,0]);
    imshow (g);
    title('power trans. r=1');
    
subplot(2,3,3);
    g=imadjust(x,[0.5 0.75],[0 1],0.5);
    imshow (g);
    title('power transf. r<1');
    
subplot(2,3,4);
    g=imadjust(x,[0.5 0.75],[0.6 1],0.5);
    imshow (g);
    title('power transf. r<1');
subplot(2,3,5);
    g=imadjust(x,[],[],2);
    imshow (g);
    title('power transf. r>1');
    fprintf('92000103073 Raj Chhadia');